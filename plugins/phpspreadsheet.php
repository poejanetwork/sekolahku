<?php
require 'phpspreadsheet/vendor/autoload.php';

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use PhpOffice\PhpSpreadsheet\Style\Alignment;
use PhpOffice\PhpSpreadsheet\Style\Border;
use PhpOffice\PhpSpreadsheet\Cell\Coordinate;

function createSpreadsheet() {
    return new Spreadsheet();
}
function createXlsx($spreadsheet) {
    return new Xlsx($spreadsheet);
}
function createBorderThin() {
    return Border::BORDER_THIN;
}
function createAlignmentCenter() {
    return Alignment::HORIZONTAL_CENTER;
}

function createAlignmentMiddle() {
    return Alignment::VERTICAL_CENTER;
}
function createCoordinate($headers) {
    return Coordinate::stringFromColumnIndex($headers);
}
?>