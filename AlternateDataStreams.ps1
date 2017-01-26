#Grabs the path you wish to search 
$getPath = Read-Host "What is the path you would like to search (example: c:\temp)"

#recursively searches through a path and grabs the data streams 
$getItem = Get-ChildItem -Path $getPath -Recurse | Get-Item -Stream * 


foreach($item in $getItem) {

    #outputs the information to the console 
    Write-Host "Path: " $item.PSPath -ForegroundColor Green 
    Write-Host "Parent Path: " $item.PSParentPath -ForegroundColor Yellow
    Write-Host "PSChildName: " $item.PSChildName -ForegroundColor Yellow 
    Write-Host "PSProvider: " $item.PSProvider -ForegroundColor Yellow
    Write-Host "PSIsContainer: " $item.PSIsContainer -ForegroundColor Yellow
    Write-Host "Filename: " $item.FileName -ForegroundColor Yellow
    Write-Host "Stream: " $item.Stream -ForegroundColor Red
    Write-Host "Length: " $item.Length -ForegroundColor Yellow
    Write-Host "`n"

}