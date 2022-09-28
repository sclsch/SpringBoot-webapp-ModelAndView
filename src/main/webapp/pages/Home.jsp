<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="../js/jquery.min.js"></script>
</head>

<body>
From jsp file ${name}
<img id="file_img"  alt="">
<div class="container"></div>
<script>
    $(document).ready(function() {
        $.ajax({
            url: "http://localhost:8080/ydxj/file/downloadBase64?id=339",
            type: "get",
            headers: {
                "Authorization":"Bearer eyJhbGciOiJIUzUxMiJ9.eyJ1c2VyX2lkIjoxLCJ1c2VyX2tleSI6ImZkZmJhNzNjLWU1MmQtNDcxMC1iZjNmLTc2NzVmYTk3YmYzZSIsInVzZXJuYW1lIjoiYWRtaW4ifQ.f90XdHcOMdFfp26F07G5G6NTaojMDCp5jGGs_d9X3gk6VhDwlLac7TaxKdE1AlAvq5atQrjjivqHw1oS7_8afw"
            },
            success: function (data) {
                console.log(data);
                var base64 = data.data;
                $("#file_img").attr("src","data:image/png;base64," + base64)
            }
        });

    });

</script>


</body>
</html>