const swiper = new Swiper('.swiper', {
    // Optional parameters
    direction: 'vertical',
    // autoHeight : true,
    mousewheel: true,
    loop: false,
    
    // If we need pagination
    pagination: {
        el: '.swiper-pagination',
        clickable : true,
    },
    
    // Navigation arrows
    navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
    },
    // 푸터 애니매이션
    on: {
        slideChangeTransitionEnd: function(){
            // console.log(this.activeIndex+1);
            cview=this.activeIndex+1;
            if(cview==5){
                $("#footer").css("display","inline-block").animate({width: 1980}, 300);
            }else{
                $("#footer").animate({width: 0}, 300);
                $("#footer").css("display","none");
            };
        },
    },
    });
    //searchBtn
    function test() {
        swiper.slideTo(1, 500, true);
    };
    
    //search-tag-button
    let filterDB="";
    let filterDBview="";
    $(document).ready(function(){
        $('.filterbox').change(function(){
            if($(this).is(":checked")) {
                filterDB+=this.value;
                filterDBview+=this.value+" ";
                $('label[for='+this.id+']').css({"background-color":"white","color":"#212529"}).removeClass('change-btn').addClass('rechange-btn');
            }else{
                filterDB=filterDB.replace(this.value,'');
                filterDBview=filterDBview.replace(this.value+" ",'');
                $('label[for='+this.id+']').css({"background-color":"#212529","color":"white"}).removeClass('rechange-btn').addClass('change-btn');
            }
            console.log(filterDBview);
            $(".filter-search").attr("value",filterDBview);
            $(".filter-search-value").attr("value",filterDB);
        });
    });

