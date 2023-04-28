$file_location = Get-Content -Path "<Path of JSON File>/dummy_data.json" | ConvertFrom-Json

$count=0
$dependency_flag="true"
$resources_Type = $file_location.resources

Write-Output "Dependent resource types are:-"

foreach ($number in $resources_Type)
{ 
 $resources_Type_dependsOn = $file_location.resources[$count].properties.dependsOn

 if($resources_Type_dependsOn -eq $dependency_flag)
{    
    $name1 = $file_location.resources[$count].name
    $resourceType1 = $file_location.resources[$count].properties.resourceType
    $dependencies1 = $file_location.resources[$count].dependencies.resourceType
    $s=$dependencies1.Split(" ")
    write-host "Name of Resource:"$name1
    write-host "Type of Resource:"$resourceType1
    Write-Output "Dependency Name:"$s `n
}
    $count++
 }

