param (
    [Parameter(Mandatory=$true)]
    [string]$color,

    [Parameter(Mandatory=$true)]
    [string]$new
)

# types: rgb, oklch, hex, hsv, ansi, hsl, hwb, cmyk, pms, 

Write-Output "Color: $color, new type: $new"

if ($color.StartsWith("rgb(")) {
    $cl = $color -split ","
    $rgb = [int[]]($str -replace '[()]' -split ',')
} else {
    Write-Output "path 2"
}
Write-Output "rgb: $rgb"