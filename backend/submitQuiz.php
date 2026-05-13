<?php
$data = json_decode(file_get_contents("php://input"), true);

$score = 0;

foreach ($data as $q) {
    if ($q['selected'] == $q['correct']) {
        $score++;
    }
}

echo json_encode(["score" => $score]);
?>