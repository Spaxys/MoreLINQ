@echo off
pushd "%~dp0"
for /f %%f in ('dir /s /b *.tt') do (
    echo>&2 dotnet tt %%f
    dotnet tt %%f || goto :end
)
:end
popd
