  let qrcode = new QRCode("output", {
            text: "http://snapchat.com/",
            width: 100,
            height: 100,
            colorDark : "#000000",
            colorLight : "#ffffff",
            correctLevel : QRCode.CorrectLevel.H
        });
        
        // document.body.addEventListener('click', ()=>{
        //     qrcode.clear(); 
        //     qrcode.makeCode("http://google.ca/"); 
        // })

        var links = [
            "link1.html",
            "http://youtube.com",
            "http://facebook.com",
            "http://instagram.com"
        ];
        var link = 0;
        function cambioDeLink(){
            qrcode.makeCode(links[link]); 
            link++;
        }
        