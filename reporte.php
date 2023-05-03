<?php
require('fpdf/fpdf.php');

class PDF extends FPDF
{
// Cabecera de página

function Header()
{
    $this->SetFont('Arial','B',15);
    $this->Image('img/logo2_negro.png',160,8,40);
    $this->Image('img/fondo.png',-20,0,165);
    $this->setXY(80,15); //Espaciado de x-y del titulo
    $this->Cell(50,8, 'Equipos Vendidos',0,0,'C',0);
    $this->SetFont('Arial','B',10);
    $this->setXY(80,25); //Espaciado de x-y del subtitulo
    $this->Cell(50,8, 'Doctor Pantalla',0,0,'C',0);
    $this->Ln(30); 
}


// Pie de página
function Footer()
{
    // Posición: a 1,5 cm del final
    $this->SetY(-15);
    // Arial italic 8
    $this->SetFont('Arial','B',8);
    // Número de página
    
    $this->SetTextColor(255,255,255);
    $this->Cell(20,10, utf8_decode('Reporte emitido el día: ') .date('d/m/Y') ,0,0,'C');

    $this->SetTextColor(0,0,0);
    $this->Cell(310,10,utf8_decode('Página ').$this->PageNo().'/{nb}',0,0,'C');
}


}

// Creación del objeto de la clase heredada
$pdf = new PDF();

$titulo = 'Ventas - Doctor Pantalla';
$pdf->SetTitle($titulo);

$pdf->AliasNbPages();
$pdf->AddPage();
$pdf->SetMargins(20,20);
$pdf->SetAutoPageBreak(20,20);
$pdf->SetX(30);
$pdf->SetFont('Times', 'B', 10);
$pdf->Cell(10,10,'ID',1,0,'C',0);
$pdf->Cell(25,10,'Modelo',1,0,'C',0);
$pdf->Cell(30,10,'Memoria',1,0,'C',0);
$pdf->Cell(40,10,'Almacenamiento',1,0,'C',0);
$pdf->Cell(30,10,'Negocio',1,0,'C',0);
$pdf->Cell(20,10,'Precio',1,1,'C',0);

$pdf->SetFillColor(233,229,235); //color de fondo
$pdf->SetDrawColor(181,14,246); //Color de bordes
$pdf->Ln(0.5);

for($i=1;$i<=40;$i++)
{
    $pdf->SetX(30);
    $pdf->Cell(10,10,$i,1,0,'C',1);
    $pdf->Cell(25,10,'HP',1,0,'C',1);
    $pdf->Cell(30,10,'16GB DDR4',1,0,'C',1);
    $pdf->Cell(40,10,'256GB SSD',1,0,'C',1);
    $pdf->Cell(30,10,'40$',1,0,'C',1);
    $pdf->Cell(20,10,utf8_decode('París'),1,1,'C',1);
}

$pdf->Output();
?>