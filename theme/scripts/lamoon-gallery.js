$(document).ready(function() {

    // To enable auto-generated thumbnail
    $('.photo-item').nailthumb();
    
    var $container = $('#gallery');
    
    $container.find('.photo-item').each(function() {
        $($(this).find('a')).attr('rel', 'gallery_all');
    });

    $container.imagesLoaded(function() {
        
        $container.isotope({
            itemSelector : '.photo-item',
            layoutMode : 'fitRows'
        });
        
        
    });

    $('#categories a').click(function() {
        var selector = $(this).attr('data-filter');
        $container.isotope({
            filter : selector
        });
        return false;
    });
    
    
    
    /* Gallery Category */
    $('ul#categories a').click(function() {
        $('ul#categories a').removeClass('active');
        $(this).addClass('active');
        
        var selector = $(this).attr('data-filter');
        var rel = ''; 
        
        if(selector == '*') {
            rel = 'all';
        } else {
            rel = selector.replace('.', '');
        }
        
        $container.find('.photo-item').find('a').removeAttr('rel');
        
        $container.find('.photo-item').each(function(i) {
            if(rel != 'all') {
                if($(this).attr('class').indexOf(rel) != -1) {
                    $($(this).find('a')).attr('rel', 'gallery_' + rel);
                }
            } else {
                $($(this).find('a')).attr('rel', 'gallery_' + rel);
            }
        });
        
    });
    /* End Gallery Category */

});
