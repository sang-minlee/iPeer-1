<?php
$numberQuestions = array();
$textQuestions = array();
foreach ($mixevalQuestion as $question) {
    if ($question['MixevalsQuestion']['question_type'] != 'S') {
        $textQuestions[] = $question;
    } else {
        $numberQuestions[] = $question;
    }
}

$memberList = Set::combine($event, 'Member.{n}.id', 'Member.{n}.full_name');

$showGrades = array_sum(Set::extract($evalResult, '/EvaluationMixeval/grade_release')) ||
    $tableType == 'evaluator' || $tableType == 'evaluatee';
$showComments = array_sum(Set::extract($evalResult, '/EvaluationMixeval/comment_release')) ||
    $tableType == 'evaluator' || $tableType == 'evaluatee';
?>

<table class="standardtable" style="margin-top: 2em;">
    <tr>
        <td colspan="<?php echo count($numberQuestions)+1?>"><b> <?php __('Section One:')?> </b></td>
    </tr>
    <?php echo $this->Html->tableHeaders($this->Evaluation->getResultTableHeader($numberQuestions, __('Person Being Evaluated', true))) ?>
    <?php echo $showGrades ? $this->Html->tableCells($this->Evaluation->getMixevalResultTable($evalResult, $memberList, $numberQuestions, $tableType)) : '' ?>
</table>
<?php if (!$showGrades): ?>
<div style="text-align: center;color: red;">Grades Not Released Yet.</div>
<?php endif;?>

<!-- Section Two -->
<table class="standardtable" style="margin-top: 2em;">
    <tr>
        <td colspan="<?php echo count($textQuestions)+1?>"><b><?php __('Section Two')?>:</b></td>
    </tr>
    <?php echo $this->Html->tableHeaders($this->Evaluation->getResultTableHeader($textQuestions, __('Person Being Evaluated', true))) ?>
    <?php echo $showComments ? $this->Html->tableCells($this->Evaluation->getMixevalResultTable($evalResult, $memberList, $textQuestions, $tableType)) : '' ?>
</table>
<?php if (!$showComments): ?>
<div style="text-align: center;color: red;">Comments Not Released Yet.</div>
<?php endif;?>
