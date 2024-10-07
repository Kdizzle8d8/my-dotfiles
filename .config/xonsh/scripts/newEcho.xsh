#! /usr/local/bin/xonsh


echo Creating new go backend....
name = input("Name of new API (default: backend): ")
if name =="":
  name="backend"

mkdir @(name)
cd @(name)

go mod init @(name)-api
go get github.com/labstack/echo/v4

cp ~/.config/xonsh/scripts/temp.go ./main.go


