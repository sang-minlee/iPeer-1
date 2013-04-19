<?php
require_once('system_base.php');

class MergeUsersTestCase extends SystemBaseTestCase
{    
    public function startCase()
    {
        $this->getUrl();
        $wd_host = 'http://localhost:4444/wd/hub';
        $this->web_driver = new PHPWebDriver_WebDriver($wd_host);
        $this->session = $this->web_driver->session('firefox');
        $this->session->open($this->url);
        
        $w = new PHPWebDriver_WebDriverWait($this->session);
        $this->session->deleteAllCookies();
        $login = PageFactory::initElements($this->session, 'Login');
        $home = $login->login('root', 'ipeeripeer');
    }
    
    public function endCase()
    {
        $this->session->deleteAllCookies();
        $this->session->close();
    }
    
    public function testAddUsers()
    {
        $title = $this->session->element(PHPWebDriver_WebDriverBy::CSS_SELECTOR, "h1.title")->text();
        $this->assertEqual($title, 'Home');
        
        $user1 = array(
            'UserUsername' => 'bobby1234',
            'UserFirstName' => 'Bob',
            'UserLastName' => 'Black',
            'UserEmail' => 'rob@bobby.com',
            'UserStudentNo' => '15123578',
        );
        $course1 = array('CoursesId2');
        
        $user2 = array(
            'UserUsername' => 'bobby5678',
            'UserFirstName' => 'Rob',
            'UserLastName' => 'Black',
            'UserEmail' => 'rob@bobby.com',
            'UserStudentNo' => '15123578',
        );
        $course2 = array('CoursesId1', 'CoursesId2');
        
        $this->session->element(PHPWebDriver_WebDriverBy::LINK_TEXT, 'Users')->click();
        $title = $this->session->element(PHPWebDriver_WebDriverBy::CSS_SELECTOR, "h1.title")->text();
        $this->assertEqual($title, 'Users');
        
        $this->addUser($user1, $course1);
        $this->addUser($user2, $course2);
    }
    
    public function addUser($user, $courses)
    {        
        $this->session->element(PHPWebDriver_WebDriverBy::LINK_TEXT, 'Add User')->click();
        $heading = $this->session->element(PHPWebDriver_WebDriverBy::CSS_SELECTOR, 'h1.title')->text();
        $this->assertEqual($heading, 'Add User');
        
        foreach ($user as $id => $txt) {
            $this->session->element(PHPWebDriver_WebDriverBy::ID, $id)->sendKeys($txt);
        }
        
        foreach ($courses as $course) {
            $this->session->element(PHPWebDriver_WebDriverBy::ID, $course)->click();
        }
        
        $this->session->element(PHPWebDriver_WebDriverBy::NAME, 'data[Form][save]')->click();
    }
    
    public function testMergeUsers() {
        $this->session->element(PHPWebDriver_WebDriverBy::LINK_TEXT, 'Users')->click();

        $this->session->element(PHPWebDriver_WebDriverBy::LINK_TEXT, 'Merge Users')->click();
        $heading = $this->session->element(PHPWebDriver_WebDriverBy::CSS_SELECTOR, 'h1.title')->text();
        $this->assertEqual($heading, 'Merge Users');

        $return = new PHPWebDriver_WebDriverKeys('ReturnKey');

        $primary = $this->session->element(PHPWebDriver_WebDriverBy::ID, 'UserPrimarySearchValue');
        $primary->sendKeys('Bob B');
        $primary->sendKeys($return->key);
        
        $this->session->element(PHPWebDriver_WebDriverBy::CSS_SELECTOR, 'select[id="UserSecondarySearch"] option[value="username"]')->click();
        $secondary = $this->session->element(PHPWebDriver_WebDriverBy::ID, 'UserSecondarySearchValue');
        $secondary->sendKeys('bby567');
        $secondary->sendKeys($return->key);

        // wait for primary account search results
        $w = new PHPWebDriver_WebDriverWait($this->session);
        $session = $this->session;
        $w->until(
            function($session) {
                return count($session->elements(PHPWebDriver_WebDriverBy::CSS_SELECTOR, 'select[id="UserPrimaryAccount"] option')) - 1;
            }
        );
        $primaryUser = $this->session->elements(PHPWebDriver_WebDriverBy::CSS_SELECTOR, 'select[id="UserPrimaryAccount"] option');
        $this->assertEqual($primaryUser[0]->text(), '-- Pick the primary account --');
        $this->assertEqual($primaryUser[1]->text(), 'Bob Black');
        $primaryId = $primaryUser[1]->attribute('value');
        
        $this->session->element(PHPWebDriver_WebDriverBy::CSS_SELECTOR, 'select[id="UserPrimaryAccount"] option[value="'.$primaryId.'"]')->click();

        // wait for secondary account search results
        $w->until(
            function($session) {
                return count($session->elements(PHPWebDriver_WebDriverBy::CSS_SELECTOR, 'select[id="UserSecondaryAccount"] option')) - 1;
            }
        );
        $secondaryUser = $this->session->elements(PHPWebDriver_WebDriverBy::CSS_SELECTOR, 'select[id="UserSecondaryAccount"] option');
        $this->assertEqual($secondaryUser[0]->text(), '-- Pick the secondary account --');
        $this->assertEqual($secondaryUser[1]->text(), 'bobby5678');
        $secondaryId = $secondaryUser[1]->attribute('value');
        
        $this->session->element(PHPWebDriver_WebDriverBy::CSS_SELECTOR, 'select[id="UserSecondaryAccount"] option[value="'.$secondaryId.'"]')->click();

        $this->session->element(PHPWebDriver_WebDriverBy::CSS_SELECTOR, 'input[type="submit"]')->click();
        
        $this->session->accept_alert();
        
        // wait for merger to finish
        $w->until(
            function($session) {
                return count($session->elements(PHPWebDriver_WebDriverBy::CSS_SELECTOR, "div[class='message good-message green']"));
            }
        );
        
        $msg = $this->session->element(PHPWebDriver_WebDriverBy::CSS_SELECTOR, "div[class='message good-message green']")->text();
        $this->assertEqual($msg, 'The two accounts have successfully merged.');      
        
        $this->session->open($this->url.'users/delete/'.$primaryId);
        $msg = $this->session->element(PHPWebDriver_WebDriverBy::CSS_SELECTOR, "div[class='message good-message green']")->text();
        $this->assertEqual($msg, 'Record is successfully deleted!');   
    }
    
    public function testUnMatchingRoles()
    {
        $this->session->open($this->url.'users/merge');
        $return = new PHPWebDriver_WebDriverKeys('ReturnKey');
        
        $primary = $this->session->element(PHPWebDriver_WebDriverBy::ID, 'UserPrimarySearchValue');
        $this->session->element(PHPWebDriver_WebDriverBy::CSS_SELECTOR, 'select[id="UserPrimarySearch"] option[value="username"]')->click();
        $primary->sendKeys('root');
        $primary->sendKeys($return->key);

        $secondary = $this->session->element(PHPWebDriver_WebDriverBy::ID, 'UserSecondarySearchValue');
        $this->session->element(PHPWebDriver_WebDriverBy::CSS_SELECTOR, 'select[id="UserSecondarySearch"] option[value="student_no"]')->click();
        $secondary->sendKeys('65498451');
        $secondary->sendKeys($return->key);

        // wait for primary account search results
        $w = new PHPWebDriver_WebDriverWait($this->session);
        $session = $this->session;
        $w->until(
            function($session) {
                return count($session->elements(PHPWebDriver_WebDriverBy::CSS_SELECTOR, 'select[id="UserPrimaryAccount"] option')) - 1;
            }
        );
        $primaryUser = $this->session->elements(PHPWebDriver_WebDriverBy::CSS_SELECTOR, 'select[id="UserPrimaryAccount"] option');
        $this->assertEqual($primaryUser[0]->text(), '-- Pick the primary account --');
        $this->assertEqual($primaryUser[1]->text(), 'root');
        $primaryUser[1]->click();
        
        // wait for secondary account search results
        $w->until(
            function($session) {
                return count($session->elements(PHPWebDriver_WebDriverBy::CSS_SELECTOR, 'select[id="UserSecondaryAccount"] option')) - 1;
            }
        );
        $secondaryUser = $this->session->elements(PHPWebDriver_WebDriverBy::CSS_SELECTOR, 'select[id="UserSecondaryAccount"] option');
        $this->assertEqual($secondaryUser[0]->text(), '-- Pick the secondary account --');
        $this->assertEqual($secondaryUser[1]->text(), '65498451');
        $secondaryUser[1]->click();

        $this->session->element(PHPWebDriver_WebDriverBy::CSS_SELECTOR, 'input[type="submit"]')->click();
        $this->session->accept_alert();
        
        // wait for merger to finish
        $w->until(
            function($session) {
                return count($session->elements(PHPWebDriver_WebDriverBy::ID, "flashMessage"));
            }
        );
        
        $msg = $this->session->element(PHPWebDriver_WebDriverBy::ID, "flashMessage")->text();
        $this->assertEqual($msg, 'Error: The users do not have the same role.');     
    }
    
    public function testNoUsersFound()
    {
        $primary = $this->session->element(PHPWebDriver_WebDriverBy::ID, 'UserPrimarySearchValue');
        $primary->clear();
        $primary->sendKeys('redshirt9999');
        $return = new PHPWebDriver_WebDriverKeys('ReturnKey');
        $primary->sendKeys($return->key);
        
        // wait for primary account search results
        $w = new PHPWebDriver_WebDriverWait($this->session);
        $session = $this->session;
        $w->until(
            function($session) {
                $option = $session->element(PHPWebDriver_WebDriverBy::CSS_SELECTOR, 'select[id="UserPrimaryAccount"] option');
                return ($option->text() == '-- No users found --');
            }
        );
    }
    
    public function testMergeLoggedInUser()
    {
        $this->waitForLogout('admin1');
        $this->session->open($this->url.'users/merge');
        $return = new PHPWebDriver_WebDriverKeys('ReturnKey');
        
        $primary = $this->session->element(PHPWebDriver_WebDriverBy::ID, 'UserPrimarySearchValue');
        $this->session->element(PHPWebDriver_WebDriverBy::CSS_SELECTOR, 'select[id="UserPrimarySearch"] option[value="username"]')->click();
        $primary->sendKeys('admin');
        $primary->sendkeys($return->key);
        
        $secondary = $this->session->element(PHPWebDriver_WebDriverBy::ID, 'UserSecondarySearchValue');
        $secondary->sendKeys('admin');
        $secondary->sendKeys($return->key);
        
        $w = new PHPWebDriver_WebDriverWait($this->session);
        $session = $this->session;
        $w->until(
            function($session) {
                return count($session->elements(PHPWebDriver_WebDriverBy::CSS_SELECTOR, 'select[id="UserPrimaryAccount"] option')) - 1;  
            }
        );
        $w->until(
            function($session) {
                return count($session->elements(PHPWebDriver_WebDriverBy::CSS_SELECTOR, 'select[id="UserSecondaryAccount"] option')) - 1;  
            }
        );
        
        $primaryUser = $this->session->elements(PHPWebDriver_WebDriverBy::CSS_SELECTOR, 'select[id="UserPrimaryAccount"] option');
        $this->assertEqual($primaryUser[0]->text(), '-- Pick the primary account --');
        $this->assertEqual($primaryUser[1]->text(), 'admin1');
        $this->assertEqual($primaryUser[2]->text(), 'admin2');
        
        $secondaryUser = $this->session->elements(PHPWebDriver_WebDriverBy::CSS_SELECTOR, 'select[id="UserSecondaryAccount"] option');
        $this->assertEqual($secondaryUser[0]->text(), '-- Pick the secondary account --');
        $this->assertEqual($secondaryUser[1]->text(), 'admin1');
        $this->assertEqual($secondaryUser[2]->text(), 'admin2');
        
        $primaryUser[2]->click();
        $secondaryUser[1]->click();
        
        $this->session->element(PHPWebDriver_WebDriverBy::CSS_SELECTOR, 'input[type="submit"]')->click();
        $this->session->accept_alert();
        
        $w->until(
            function($session) {
                return count($session->elements(PHPWebDriver_WebDriverBy::ID, 'flashMessage'));  
            }
        );
        $msg = $this->session->element(PHPWebDriver_WebDriverBy::ID, 'flashMessage');
        $this->assertEqual($msg->text(), 'Error: The secondary account is the currently logged in user.');
    }
    
    public function testMergeSameUsers()
    {
        $return = new PHPWebDriver_WebDriverKeys('ReturnKey');
        $this->session->element(PHPWebDriver_WebDriverBy::ID, 'UserPrimarySearchValue')->sendKeys($return->key);
        $this->session->element(PHPWebDriver_WebDriverBy::ID, 'UserSecondarySearchValue')->sendKeys($return->key);
        
        $w = new PHPWebDriver_WebDriverWait($this->session);
        $session = $this->session;
        $w->until(
            function($session) {
                return count($session->elements(PHPWebDriver_WebDriverBy::CSS_SELECTOR, 'select[id="UserPrimaryAccount"] option')) - 1;  
            }
        );
        $w->until(
            function($session) {
                return count($session->elements(PHPWebDriver_WebDriverBy::CSS_SELECTOR, 'select[id="UserSecondaryAccount"] option')) - 1;  
            }
        );
        
        $this->session->element(PHPWebDriver_WebDriverBy::CSS_SELECTOR, 'select[id="UserPrimaryAccount"] option[value="38"]')->click();
        $this->session->element(PHPWebDriver_WebDriverBy::CSS_SELECTOR, 'select[id="UserSecondaryAccount"] option[value="38"]')->click();
        
        $this->session->element(PHPWebDriver_WebDriverBy::CSS_SELECTOR, 'input[type="submit"]')->click();
        $this->session->accept_alert();
        
        $w->until(
            function($session) {
                return count($session->elements(PHPWebDriver_WebDriverBy::ID, 'flashMessage'));  
            }
        );
        $msg = $this->session->element(PHPWebDriver_WebDriverBy::ID, 'flashMessage');
        $this->assertEqual($msg->text(), 'Error: No merger needed. The primary and secondary accounts are the same.');
    }
    
    public function testAccessibleRoles()
    {
        $primary = $this->session->element(PHPWebDriver_WebDriverBy::ID, 'UserPrimarySearchValue');
        $primary->clear();
        $primary->sendKeys('root');
        $return = new PHPWebDriver_WebDriverKeys('ReturnKey');
        $primary->sendKeys($return->key);
        
        // wait for primary account search results
        // will not find root (super admin) because it is not an accessible role for admins
        $w = new PHPWebDriver_WebDriverWait($this->session);
        $session = $this->session;
        $w->until(
            function($session) {
                $option = $session->element(PHPWebDriver_WebDriverBy::CSS_SELECTOR, 'select[id="UserPrimaryAccount"] option');
                return ($option->text() == '-- No users found --');
            }
        );
    }
}