screenSizeX = 26

function createFile(_name)
    shell.execute("edit", _name)
end

function startup()
    term.clear()
    term.setBackgroundColor(colors.gray)
    term.setCursorPos(1,1)

    for i = 0, screenSizeX do
        term.write(" ")
    end
    
    term.setCursorPos(1,1)
    term.write("OS creare remove exit")
    term.setBackgroundColor(colors.black) 
end

startup()


while true do
    event, b, x, y = os.pullEvent()
    if event == "mouse_click" then
        if y == 1 and x == 21 or x == 20 or x == 19 or x == 18 then
            term.setCursorPos(18,1)
            term.write("exit")
            os.sleep(0.1)
            term.setCursorPos(18,1)
            term.setBackgroundColor(colors.gray)
            term.write("exit")
            term.setCursorPos(1,2)
            term.setBackgroundColor(colors.black)
            term.write("Test")
            --break
        end
        
    end
    os.sleep(0)
end

