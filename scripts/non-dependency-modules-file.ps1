$file_location = Get-Content -Path "<Path of JSON File>/dummy_data.json" | ConvertFrom-Json
$count=0
$resources_Type= $file_location.resources.properties.resourceType

$resources_Type1 = $file_location.resources
Write-Output "Non-Dependent resource types are:-"

foreach ($number in $resources_Type1)
{ 
    $resources_Type11 = $file_location.resources[$count].name

    $resources_Type12 = $file_location.resources[$count].properties.resourceType

    $resources_Type_from_JSON = $file_location.resources[$count].properties.resourceType

    if($resources_Type11 -eq $resources_Type_from_JSON -And $resources_Type12 -eq $resources_Type_from_JSON)
  {    
    Write-Host "Resource Type:"$resources_Type12
  }
     $count++
}