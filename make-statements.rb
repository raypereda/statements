
File.open('MM_STMXT.TXT','r').each do |line| 
    id = line[0,4]
    if id == '0000' then
        date = line[21, 10]
        message = line[31, 100]
        routing = line[131, 9]
        institution = line[140, 9]
        program = line[180, 20]
        version = line[200, 10]
        quenbr = line[210, 10]
        appnbr = line[220, 10]
        quesubnbr = line[240, 15]
        phone = line[210, 10]
        language = line[245, 4]
        
        printf("%s: date: %s message: %s\n\n\n", id, date, message)
    end
    if id == '9000' then
        id2 = line[38,4]
        count = line[42,9]
        printf("%s:%s %s\n", id, id2, count)
        next
    end
    printf("%s: %s\n", id, line)  
end
