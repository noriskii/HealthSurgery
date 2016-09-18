var resizeTime = 100;     // total duration of the resize effect, 0 is instant
var resizeDelay = 100;    // time to wait before checking the window size again
                          // the shorter the time, the more reactive it will be.
                          // short or 0 times could cause problems with old browsers.
$(document).ready(function() {
function state_change(data) {
//        alert(data.state+":"+data.selected);

}      
$('img').mapster({
        noHrefIsMask: false,
        onStateChange: state_change,
        fillColor: 'd42e16',
        fillOpacity: 0.7,
        mapKey: "title",
        strokeWidth: 2,
        stroke:true,
        strokeColor: "3320FF",
        strokeOpacity: 0.8,
        isSelectable: true,
        render_select: {
            fillColor: 'adadad',
            fillOpacity: 0.5
        },
        areas:  [{
          key : 'PeEsquerdoFrente',
          fillColor: "000000"
          },
          {
          key : 'PeDireitoFrente',
          fillColor: "000000"
          },
          {
          key : 'PernaDireitaFrente',
          fillColor: "000000"
          },
          {
          key : 'PernaEsquerdaFrente',
          fillColor: "000000"
          },
          {
          key : 'JoelhoDireitoFrente',
          fillColor: "000000"
          },
          {
          key : 'JoelhoEsquerdoFrente',
          fillColor: "000000"
          },
          {
          key : 'CoxaDireitaFrente',
          fillColor: "000000"
          },
          {
          key : 'CoxaEsquerdaFrente',
          fillColor: "000000"
          },
          {
          key : 'Pelvis',
          fillColor: "000000"
          },
          {
          key : 'Barriga',
          fillColor: "000000"
          },
          {
          key : 'Torax',
          fillColor: "000000"
          },
          {
          key : 'MamaDireita',
          fillColor: "000000"
          },
          {
          key : 'MamaEsquerda',
          fillColor: "000000"
          },
          {
          key : 'Peitoral',
          fillColor: "000000"
          },
          {
          key : 'AxilaEsquerda',
          fillColor: "000000"
          },
          {
          key : 'AxilaDireita',
          fillColor: "000000"
          },
          {
          key : 'BracoEsquerdo',
          fillColor: "000000"
          },
          {
          key : 'BracoDireito',
          fillColor: "000000"
          },
          {
          key : 'AntebracoEsquerdo',
          fillColor: "000000"
          },
          {
          key : 'AntebracoDireito',
          fillColor: "000000"
          },
          {
          key : 'MaoEsquerdaFrente',
          fillColor: "000000"
          },
          {
          key : 'MaoDireitaFrente',
          fillColor: "000000"
          },
          {
          key : 'PescocoFrente',
          fillColor: "000000"
          },
          {
          key : 'CabecaFrente',
          fillColor: "000000"
          },
          {
          key : 'PeEsquerdoTras',
          fillColor: "000000"
          },
          {
          key : 'PeDireitoTras',
          fillColor: "000000"
          },
          {
          key : 'PernaEsquerdaTras',
          fillColor: "000000"
          },
          {
          key : 'PernaDireitaTras',
          fillColor: "000000"
          },
          {
          key : 'JoelhoEsquerdoTras',
          fillColor: "000000"
          },
          {
          key : 'JoelhoDireitoTras',
          fillColor: "000000"
          },
          {
          key : 'CoxaEsquerdaTras',
          fillColor: "000000"
          },
          {
          key : 'CoxaDireitaTras',
          fillColor: "000000"
          },
          {
          key : 'NadegaEsquerda',
          fillColor: "000000"
          },
          {
          key : 'NadegaDireita',
          fillColor: "000000"
          },
          {
          key : 'CostasBaixo',
          fillColor: "000000"
          },
          {
          key : 'CostasCima',
          fillColor: "000000"
          },
          {
          key : 'PescocoTras',
          fillColor: "000000"
          },
          {
          key : 'BracoEsquerdoTras',
          fillColor: "000000"
          },
          {
          key : 'BracoDireitoTras',
          fillColor: "000000"
          },
          {
          key : 'AntebracoEsquerdoTras',
          fillColor: "000000"
          },
          {
          key : 'AntebracoDireitoTras',
          fillColor: "000000"
          },
          {
          key : 'MaoEsquerdaTras',
          fillColor: "000000"
          },
          {
          key : 'MaoDireitaTras',
          fillColor: "000000"
          },
          {
          key : 'CabecaTras',
          fillColor: "000000"
          }]
    });
});
// Resize the map to fit within the boundaries provided
/*
function resize(maxWidth,maxHeight) {
     var image =  $('img'),
        imgWidth = image.width(),
        imgHeight = image.height(),
        newWidth=0,
        newHeight=0;

    if (imgWidth/maxWidth<imgHeight/maxHeight) {
        newWidth = maxWidth;
    } else {
        newHeight = maxHeight;
    }
    image.mapster('resize',newWidth,newHeight,resizeTime);   
}
    
// Track window resizing events, but only actually call the map resize when the
// window isn't being resized any more

function onWindowResize() {
    
    var curWidth = $(window).width(),
        curHeight = $(window).height(),
        checking=false;
    if (checking) {
        return;
            }
    checking = true;
    window.setTimeout(function() {
        var newWidth = $(window).width(),
           newHeight = $(window).height();
        if (newWidth === curWidth &&
            newHeight === curHeight) {
            resize(newWidth,newHeight); 
        }
        checking=false;
    },resizeDelay );
}

$(window).bind('resize',onWindowResize);*/