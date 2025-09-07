<?php
require 'phpspreadsheet/vendor/autoload.php';

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use PhpOffice\PhpSpreadsheet\Style\Alignment;
use PhpOffice\PhpSpreadsheet\Style\Border;
use PhpOffice\PhpSpreadsheet\Cell\Coordinate;
use PhpOffice\PhpSpreadsheet\Cell\DataType;
use PhpOffice\PhpSpreadsheet\IOFactory;

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

function importExcel($filePath, $startRow = 5) {
    $spreadsheet = IOFactory::load($filePath);
    $worksheet = $spreadsheet->getActiveSheet();
    
    $highestRow = $worksheet->getHighestDataRow();
    $highestColumn = $worksheet->getHighestDataColumn();
    
    $data = [];
    for ($row = $startRow; $row <= $highestRow; ++$row) {
        // Ambil satu baris data, kolom A ke kolom terakhir
        $rowData = $worksheet->rangeToArray('A' . $row . ':' . $highestColumn . $row, NULL, TRUE, TRUE, TRUE);
        
        // baris array $rowData[$row] berformat ['A'=>valueA, 'B'=>valueB,...]
        $data[] = $rowData[$row];
    }
    return $data;
}
?>