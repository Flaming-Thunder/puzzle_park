@echo off
rmdir "./data/puzzle_park/function" /s /q
java -jar ./MinecraftScript.jar ./src ./data/puzzle_park/function puzzle_park 2 .
