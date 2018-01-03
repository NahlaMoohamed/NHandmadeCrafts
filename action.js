
function generatePictureModals(imageSize, path)
{
	var index = 1,loop = 0;
    if((imageSize%3) == 0)
    {
        loop = imageSize/3;
    }
    else
    {
        loop = Math.floor(imageSize/3)+1;
    }
    var container = document.getElementById("imageContainer");
    container.className ="container text-center";
    var table = document.createElement("div");
    table.id = "imageBorder";
    document.getElementById("imageContainer").appendChild(table);
    for (var i=0; i < loop; i++) 
    {
        var row = document.createElement("div")
        row.className = "row";
        for(var j=0; j<3;j++)
        {
            var col = document.createElement("div");
            col.className = "col-md-4 hovereffect";
            var img = new Image();
            img.className = "img-responsive center-block";
            if(index <= imageSize)
            {
                var temp = path+index+'.jpg';
                img.src = temp;
                var imageId = "myImg"+index;
                img.id = imageId;
                col.appendChild(img);
                index++;
                row.appendChild(col);
                table.appendChild(row);

                var myModal = document.createElement("div");
                myModal.className = "modal";
                myModal.id = "myModal"+index;
                var span = document.createElement("span");
                span.className = "close";
                span.textContent = "X";
                var image = new Image();
                image.className = "modal-content";
                var modalImageId = "img"+ index;
                image.id = modalImageId;
                myModal.appendChild(span);
                myModal.appendChild(image);
                table.appendChild(myModal);
                // Get the modal
                var modal = document.getElementById('myModal'+index);

                // Get the image and insert it inside the modal - use its "alt" text as a caption
                var img1 = document.getElementById(imageId);
                var modalImg = document.getElementById(modalImageId);
                img1.onclick = function(){
                    modal.style.display = "block";
                    modalImg.src = this.src;
                }

                // Get the <span> element that closes the modal
                var spans = document.getElementsByClassName("close");
                for ( var k = 0; k < spans.length; k++ ) {
                  spans[k].addEventListener('click', function(event) {
                    event.preventDefault();
                    console.log("clicked", this);
                    modal.style.display = "none";
                  });
                }
            }
        }
    }
}