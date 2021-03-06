<?php
/**
 * MixevalsQuestion
 *
 * @uses AppModel
 * @package   CTLT.iPeer
 * @author    Pan Luo <pan.luo@ubc.ca>
 * @copyright 2012 All rights reserved.
 * @license   MIT {@link http://www.opensource.org/licenses/MIT}
 */
class MixevalsQuestion extends AppModel
{
    public $name = 'MixevalsQuestion';
    public $hasMany = array(
        'Description' =>
        array('className'   => 'MixevalsQuestionDesc',
            'order'       => '',
            'foreignKey'  => 'question_id',
            'dependent'   => true,
            'exclusive'   => true,
            'finderSql'   => ''
        ),
    );

    /**
     * Saves Mix evaluation questions to database
     *
     * @param int   $id   id of mix corresponding mix evaluation
     * @param array $data array of the mixevals questions to be inserted
     *
     * @access public
     * @return void
     */
    function insertQuestion($id=null, $data=null)
    {
        if (!is_null($id) && !is_null($data)) {
            foreach ($data as $value) {
                $value['mixeval_id'] = $id;
                $this->save($value);
                $this->id = null;
            }
        } else {
            return false;
        }
    }


  /*FUNCTION NOT BEING USED
    called by mixevals controller during an edit of an
  existing mixeval question(s)*/
  /*function updateQuestion($id, $data)
{
    $this->deleteQuestions($id);
    $this->insertQuestion($id, $data);
  }*/

    /**
     * deleteQuestions called by the delete function in the controller
     *
     * @param mixed $id
     *
     * @access public
     * @return void
     */
    function deleteQuestions($id)
    {
        //  	$this->query('DELETE FROM mixevals_questions WHERE mixeval_id='.$id);
        $this->delete($id);
    }


    /**
     * Get corresponding mix evaluation question corresponding to some mix evaluation
     *
     * @param int  $mixEvalId    mix evaluation id
     * @param bool $questionType question type
     *
     * @access public
     * @return void
     */
    function getQuestion($mixEvalId=null, $questionType=null)
    {
        if (isset($questionType)) {
            $condition = array('mixeval_id' => $mixEvalId, 'question_type' => $questionType);
        } else {
            $condition = array('mixeval_id' => $mixEvalId);
        }

        return $this->find('all', array('conditions' => $condition, 'order' => array('question_num ASC')));
    }
}
