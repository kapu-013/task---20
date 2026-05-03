Write-Host ""
Write-Host "╔════════════════════════════════════════════════════════╗" -ForegroundColor Cyan
Write-Host "║         FINAL PRESENTATION - READINESS TEST           ║" -ForegroundColor Cyan
Write-Host "╚════════════════════════════════════════════════════════╝" -ForegroundColor Cyan
Write-Host ""

$tests = @(
    @{Name="Architecture Document"; Path="C:\Day20_Presentation\1-architecture.md"},
    @{Name="Database Design"; Path="C:\Day20_Presentation\2-database-design.md"},
    @{Name="Challenges Document"; Path="C:\Day20_Presentation\3-challenges.md"},
    @{Name="Improvements Document"; Path="C:\Day20_Presentation\4-improvements.md"},
    @{Name="Demo Script"; Path="C:\Day20_Presentation\5-live-demo-script.md"},
    @{Name="Presentation Slides"; Path="C:\Day20_Presentation\slides.txt"}
)

$passed = 0
foreach ($test in $tests) {
    if (Test-Path $test.Path) {
        Write-Host "✅ $($test.Name) - READY" -ForegroundColor Green
        $passed++
    } else {
        Write-Host "❌ $($test.Name) - MISSING" -ForegroundColor Red
    }
}

Write-Host ""
Write-Host "╔════════════════════════════════════════════════════════╗" -ForegroundColor Cyan
Write-Host "║                    TEST RESULT                         ║" -ForegroundColor Cyan
Write-Host "╚════════════════════════════════════════════════════════╝" -ForegroundColor Cyan

if ($passed -eq 6) {
    Write-Host ""
    Write-Host "🎉 SUCCESS! All presentation materials ready!" -ForegroundColor Green
    Write-Host ""
    Write-Host "📁 Location: C:\Day20_Presentation" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "NEXT STEPS:" -ForegroundColor Cyan
    Write-Host "1. Open folder: explorer C:\Day20_Presentation" -ForegroundColor White
    Write-Host "2. Read all documents" -ForegroundColor White
    Write-Host "3. Practice demo script 3 times" -ForegroundColor White
    Write-Host "4. Prepare PPT from slides.txt" -ForegroundColor White
    Write-Host "5. You are ready for presentation!" -ForegroundColor Green
} else {
    Write-Host ""
    Write-Host "⚠️ Some files missing. Run the creation commands again." -ForegroundColor Red
}

Write-Host ""
