AppNAME = 'UdpServerTest'
AppVERSION = '0.0.1'
function Main(arg)
    for i = 1, 10, 1 do
        local data = { name = 'Demo', sn = 'A123456', state = '00' }
        local err = applib:DataToUdp('UdpServer', applib:T2J(data))
        applib:log('DataToUdp success? =>', err == nil)
        applib:Sleep(100)
    end
    return 0
end
