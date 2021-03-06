<?php
App::import('Lib', 'neat_string');

/**
 * SysParametersController
 *
 * @uses AppController
 * @package   CTLT.iPeer
 * @author    Pan Luo <pan.luo@ubc.ca>
 * @copyright 2012 All rights reserved.
 * @license   MIT {@link http://www.opensource.org/licenses/MIT}
 */
class SysParametersController extends AppController
{
    public $name = 'SysParameters';
    public $show;
    public $sortBy;
    public $direction;
    public $page;
    public $order;
    public $helpers = array('Html', 'Ajax', 'Javascript', 'Time');
    public $NeatString;
    public $Sanitize;
    public $uses = array('SysParameter', 'Personalize');
    public $components = array('AjaxList');

    /**
     * __construct
     *
     * @access protected
     * @return void
     */
    function __construct()
    {
        $this->Sanitize = new Sanitize;
        $this->NeatString = new NeatString;
        $this->show = empty($_GET['show'])? 'null': $this->Sanitize->paranoid($_GET['show']);
        if ($this->show == 'all') {
            $this->show = 99999999;
        }
        $this->sortBy = empty($_GET['sort'])? 'id': $_GET['sort'];
        $this->direction = empty($_GET['direction'])? 'asc': $this->Sanitize->paranoid($_GET['direction']);
        $this->page = empty($_GET['page'])? '1': $this->Sanitize->paranoid($_GET['page']);
        $this->order = $this->sortBy.' '.strtoupper($this->direction);
        $this->set('title_for_layout', __('Sys Parameters', true));
        parent::__construct();
    }

    /**
     * setUpAjaxList
     *
     * @access public
     * @return void
     */
    function setUpAjaxList()
    {
        $columns = array(
            array("SysParameter.id",             __("ID", true),      "3em", "number"),
            array("SysParameter.parameter_code", __("Code", true),    "15em", "string"),
            array("SysParameter.parameter_value",__("Value", true),   "auto", "string"),
            array("SysParameter.parameter_type", __("Type", true),    "6em",   "map",
            array("I" => "Interger", "B" => "Boolean", "S" => "String")),
            array("SysParameter.record_status",  __("Status", true),   "5em", "map",
            array("A" => "Active", "I" => "Inactive")),
            array("SysParameter.created",        __("Created", true), "10em", "date"),
            array("SysParameter.modified",       __("Updated", true), "10em", "date"));

        $warning = __("Are you sure you wish to delete this System Parameter?", true);

        $actions = array(
            array(__("View", true), "", "", "", "view", "SysParameter.id"),
            array(__("Edit", true), "", "", "", "edit", "SysParameter.id"),
            array(__("Delete", true), $warning, "", "", "delete", "SysParameter.id"));

        $this->AjaxList->setUp($this->SysParameter, $columns, $actions,
            "SysParameter.id", "SysParameter.parameter_code");
    }

    /**
     * index
     *
     * @param string $message
     *
     * @access public
     * @return void
     */
    function index()
    {
        // Set up the basic static ajax list variables
        $this->setUpAjaxList();
        // Set the display list
        $this->set('paramsForList', $this->AjaxList->getParamsForList());
    }

    /**
     * ajaxList
     *
     * @access public
     * @return void
     */
    function ajaxList()
    {
        // Make sure the present user has permission
        if (!User::hasPermission('controllers/sysparameters')) {
            $this->Session->setFlash('You do not have permission to view system parameters', true);
            $this->redirect('/home');
        }
        // Set up the list
        $this->setUpAjaxList();
        // Process the request for data
        $this->AjaxList->asyncGet();
    }

    /**
     * view
     *
     * @param mixed $id
     *
     * @access public
     * @return void
     */
    function view($id)
    {
        $this->SysParameter->id = $id;
        $this->set('data', $this->SysParameter->read());
    }

    /**
     * add
     *
     * @access public
     * @return void
     */
    function add()
    {
        if ($this->SysParameter->save($this->params['data'])) {
            $this->Session->setFlash(__('The record is saved successfully', true), 'good');
            $this->redirect('index');
        } else {
            $this->Session->setFlash(__('Failed to save the record', true));
        }
    }

    /**
     * edit
     *
     * @param bool $id
     *
     * @access public
     * @return void
     */
    function edit($id)
    {
        if (empty($this->data)) {
            $this->SysParameter->id = $id;
            $this->data = $this->SysParameter->read();
            $this->set('data', $this->data);
        } else {
            if ($this->SysParameter->save($this->data)) {
                $this->Session->setFlash(__('The record is edited successfully.', true), 'good');
                $this->redirect('index');
            } else {
                $this->Session->setFlash($this->SysParameter->errorMessage, true);
                $this->set('data', $this->data);
            }
        }
    }

    /**
     * delete
     *
     * @param bool $id
     *
     * @access public
     * @return void
     */
    function delete($id = null)
    {
        if ($this->SysParameter->delete($id)) {
            $this->Session->setFlash(__('The record is deleted successfully.', true));
            $this->redirect('index');
        }
    }
}
