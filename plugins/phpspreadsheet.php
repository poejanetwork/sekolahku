<?php
require 'phpspreadsheet/vendor/autoload.php';

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use PhpOffice\PhpSpreadsheet\Cell\Coordinate;

function createSpreadsheet() {
    return new Spreadsheet();
}
function createXlsx($spreadsheet) {
    return new Xlsx($spreadsheet);
}
function createCoordinate($headers) {
    return Coordinate::stringFromColumnIndex($headers);
}
?>