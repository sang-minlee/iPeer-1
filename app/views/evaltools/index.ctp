<?php 
// data processing for simple eval, create arrays to generate the entry tables
$simpleevalheaders = array(
    __('Name', true),
    __('In Use', true), 
    __('Public', true),  
    __('Base Point Per Member', true)
);
$simpleevalcells = array();
foreach($simpleEvalData as $data) {
    $eval = $data['SimpleEvaluation'];
    $row = array();
    $row[] = $html->link($eval['name'], '/simpleevaluations/view/'.$eval['id']);
    $row[] = $eval['event_count'] > 0 ?
        $html->image('icons/green_check.gif', array('alt'=>'green_check')) :
        $html->image('icons/red_x.gif', array('alt'=>'red_x'));
    $row[] = $eval['availability'] == "public" ?
        $html->image('icons/green_check.gif', array('alt'=>'green_check')) :
        $html->image('icons/red_x.gif', array('alt'=>'red_x'));
    $row[] = $eval['point_per_member'];
    $simpleevalcells[] = $row;
}

// data processing for rubrics, create arrays to generate the entry tables
$rubricsheaders = array(
    __('Name', true),
    __('In Use', true),
    __('Public', true),
    __('LOM', true),
    __('Criteria', true),
    __('Total Marks', true)
);
$rubricscells = array();
foreach($rubricData as $data) {
    $rubric = $data['Rubric']; 
    $row = array();
    $row[] = $html->link($rubric['name'], '/rubrics/view/'.$rubric['id']);
    $row[] = $rubric['event_count'] > 0 ?
        $html->image('icons/green_check.gif', array('alt'=>'green_check')) :
        $html->image('icons/red_x.gif', array('alt'=>'red_x'));
    $row[] = $rubric['availability'] == "public" ?
        $html->image('icons/green_check.gif', array('alt'=>'green_check')) :
        $html->image('icons/red_x.gif',array('alt'=>'red_x'));
    $row[] = $rubric['lom_max'];
    $row[] = $rubric['criteria'];
    $row[] = $rubric['total_marks'];
    $rubricscells[] = $row;
}

// data processing for mix evals, create arrays to generate the entry tables
$mixevalheaders = array(
    __('Name', true),
    __('In Use', true),
    __('Public', true),
    __('Lickert Scale Questions', true),
    __('Prefill Questions', true),
    __('Total Marks', true)
);
$mixevalcells = array();
foreach ($mixevalData as $data) { 
    $mixeval = $data['Mixeval'];
    $row = array();
    $row[] = $html->link($mixeval['name'], '/mixevals/view/'.$mixeval['id']);
    $row[] = $mixeval['event_count'] > 0 ?
        $html->image('icons/green_check.gif', array('alt'=>'green_check')) :
        $html->image('icons/red_x.gif', array('alt'=>'red_x'));
    $row[] = $mixeval['availability'] == "public" ?
        $html->image('icons/green_check.gif', array('alt'=>'green_check')) :
        $html->image('icons/red_x.gif', array('alt'=>'red_x'));
    $row[] = $mixeval['lickert_question_max'];
    $row[] = $mixeval['prefill_question_max'];
    $row[] = $mixeval['total_marks'];
    $mixevalcells[] = $row;
}

// data processing for surveys
$surveyheaders = array(
    __('Name', true),
    __('In Use', true),
    __('Course', true),
    __('Due Date', true),
    __('Released?', true)
);
$surveycells = array();
foreach($surveyData as $data) {
    $survey = $data['Survey'];
    $row = array();
    $row[] = $html->link($survey['name'], '/surveys/questionssummary/'.$survey['id']);
    $row[] = $survey['event_count'] > 0 ?
        $html->image('icons/green_check.gif', array('alt'=>'green_check')) :
        $html->image('icons/red_x.gif', array('alt'=>'red_x'));
    $row[] = $survey['course_id'] == '-1' ? 'N/A' : $data['Course']['course'];
    $row[] = Toolkit::formatDate(date('Y-m-d H:i:s', 
        strtotime($survey['due_date'])));
    $row[] = date('Y-m-d H:i:s',time()) > $survey['release_date_begin'] ?
        $html->image('icons/green_check.gif', array('alt'=>'green_check')) :
      	$html->image('icons/red_x.gif', array('alt'=>'red_x'));
    $surveycells[] = $row;
}

// data processing for email templates
$templateheaders = array(
    __('Name', true),
    __('Subject', true),
    __('Description', true)
);
$templatecells = array();
foreach($emailTemplates as $data) {
    $emailTemplate = $data['EmailTemplate'];
    $row = array();
    $row[] = $html->link($emailTemplate['name'], 
        '/emailtemplates/view/'.$emailTemplate['id']);
    $row[] = $emailTemplate['subject'];
    $row[] = $emailTemplate['description'];
    $templatecells[] = $row;
}

// evaltools navigation
echo $this->element('evaltools/tools_menu', array());
?>

<!-- Simple Eval Table -->
<h2><?php __('Simple Evaluations')?></h2>
<div class='evaltoolsadd'><?php echo $html->link(__('Add Simple Evaluation', true), '/simpleevaluations/add', array('class' => 'add-button')); ?></div>
<table class='standardtable'>
<?php 
echo $html->tableHeaders($simpleevalheaders);
echo $html->tableCells($simpleevalcells);
?>
</table>

<!-- Rubrics -->
<h2><?php __('Rubrics')?></h2>
<div class='evaltoolsadd'><?php echo $html->link(__('Add Rubric', true), '/rubrics/add', array('class' => 'add-button')); ?></div>
<table class='standardtable'>
<?php
echo $html->tableHeaders($rubricsheaders);
echo $html->tableCells($rubricscells);
?>
</table>

<!-- Mixed Evals -->
<h2><?php __('Mixed Evaluations')?></h2>
<div class='evaltoolsadd'><?php echo $html->link(__('Add Mixed Evaluation', true), '/mixevals/add', array('class' => 'add-button')); ?></div>
<table class='standardtable'>
<?php
echo $html->tableHeaders($mixevalheaders);
echo $html->tableCells($mixevalcells);
?>
</table>

<!-- Surveys -->
<h2><?php __('Surveys (Team Maker)')?></h2>
<div class='evaltoolsadd'><?php echo $html->link(__('Add Survey', true), '/surveys/add', array('class' => 'add-button')); ?></div>
<table class='standardtable'>
<?php
echo $html->tableHeaders($surveyheaders);
echo $html->tableCells($surveycells);
?>
</table>

<!-- Email Templates -->
<h2><?php __('Email Templates')?></h2>
<div class='evaltoolsadd'><?php echo $html->link(__('Add Email Template', true), '/emailtemplates/add', array('class' => 'add-button')); ?></div>
<table class='standardtable'>
<?php
echo $html->tableHeaders($templateheaders);
echo $html->tableCells($templatecells);
?>
</table>
