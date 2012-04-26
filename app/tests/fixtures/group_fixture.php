<?php
/**
 * GroupFixture
 *
 * @uses CakeTestFixture
 * @package   CTLT.iPeer
 * @author    Pan Luo <pan.luo@ubc.ca>
 * @copyright 2012 All rights reserved.
 * @license   MIT {@link http://www.opensource.org/licenses/MIT}
 */
class GroupFixture extends CakeTestFixture
{
    public $name = 'Group';

    public $fields = array(
        'id' => array('type' => 'integer', 'null' => false, 'default' => null, 'key' => 'primary'),
        'group_num' => array('type' => 'integer', 'null' => false, 'default' => 0, 'length' => 4),
        'group_name' => array('type' => 'string', 'null' => true, 'default' => null, 'length' => 80, 'collate' => 'latin1_swedish_ci', 'charset' => 'latin1'),
        'course_id' => array('type' => 'integer', 'null' => true, 'default' => null),
        'record_status' => array('type' => 'string', 'length' => 1, 'null' => false, 'default' => 'A', 'collate' => 'latin1_swedish_ci'),
        'creator_id' => array('type' => 'integer', 'null' => false, 'default' => 0),
        'updater_id' => array('type' => 'integer', 'null' => true, 'default' => null),
        'created' => array('type' => 'datetime', 'null' => false, 'default' => '0000-00-00 00:00:00'),
        'modified' => array('type' => 'datetime', 'null' => true, 'default' => null),
    );

    public $records = array(
        array('id' => 1, 'group_num' => '1', 'group_name' => 'group1', 'course_id' =>1, 'record_status' => 'A'),
        array('id' => 2, 'group_num' => '2', 'group_name' => 'group2', 'course_id' =>1, 'record_status' => 'A'),
        array('id' => 3, 'group_num' => '3', 'group_name' => 'group3', 'course_id' =>1, 'record_status' => 'A'),
        array('id' => 4, 'group_num' => '4', 'group_name' => 'group4', 'course_id' =>1, 'record_status' => 'A'),
    );
}