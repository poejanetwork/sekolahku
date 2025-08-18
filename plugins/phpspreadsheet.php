<?php
require 'phpspreadsheet/vendor/autoload.php';

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use PhpOffice\PhpSpreadsheet\Style\Alignment;
use PhpOffice\PhpSpreadsheet\Style\Border;
use PhpOffice\PhpSpreadsheet\Cell\Coordinate;
use PhpOffice\PhpSpreadsheet\Cell\DataType;

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
function createDataType($dataType) {
    switch ($dataType) {
        case 'TYPE_STRING': return DataType::TYPE_STRING;
        case 'TYPE_NUMERIC': return DataType::TYPE_NUMERIC;
        case 'TYPE_BOOL': return DataType::TYPE_BOOL;
        case 'TYPE_INLINE': return DataType::TYPE_INLINE;
        case 'TYPE_FORMULA': return DataType::TYPE_FORMULA;
        default: return DataType::TYPE_STRING;
    }
}
?>