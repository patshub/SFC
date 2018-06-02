/** 
 * Admin inits.
 * jQuery script.
 *
 * @author Alejandro Mostajo <http://about.me/amostajo>
 * @copyright 10Quality
 * @package PostGallery
 * @version 2.2.1
 */
(function($) {

    /**
     * On ready.
     * @since 1.0.0
     */
    $(document).ready(function() {

        /**
         * Media uploader init.
         * Window variables created:
         * - postGallery
         * - postGallery_1 (if needed)
         * - postGallery_* (if needed)
         * @since 1.0.0
         * @since 1.0.4 Adds window variable(s) and refactors name.
         * @since 2.2.1 Hide uploader on upload completion.
         */
        $('.gallery-uploader').each(function(i) {
            window['postGallery'+(i === 0 ? '' : '_'+i)] = $(this).mediaUploader({
                editor: $(this).data('editor'),
                target: $(this).data('target'),
                clearTarget: $(this).data('clearTarget') | false,
                success: function() {
                    // Hide uploader
                    $('#post-gallery').find('.media-loader').hide();
                },
            });
        });

        /**
         * Enable sort.
         * @since 1.0.0
         */
        $('.sortable').each(function() {
            $(this).sortable();
        });

        /**
         * Remove image from gallery.
         * @since 1.0.0
         */
        $(document).on('click', '.remove.from-gallery', function(e) {
            e.preventDefault();
            var $target = $(this).closest('.attachment');
            if ($target.length > 0)
                $target.remove();
        });

        /**
         * Scrolls page to where marker is located.
         * @since 1.0.0
         */
        $('.scroll-to').click(function(e) {
            e.preventDefault();
            $('html, body').animate({
                scrollTop: $($(this).data('marker')).offset().top
                    + ($(this).data('offset') == undefined ? 0 : parseInt($(this).data('offset'))),
            }, 1000, 'swing');
        });

        /**
         * React to format changes.
         * @since 2.0.0
         */
        $('#post-gallery .format').each(function() {
            $(this).click(function(e) {
                $('.format.active').removeClass('active');
                $(this).addClass('active');
                // Show form
                $('#post-gallery .if-reactive').hide();
                $('#post-gallery .if-'+$(this).attr('id')).show();
            });
        });

        /**
         * React.
         * @since 2.0.0
         */
        $('#post-gallery .if-reactive').hide();
        if ($('#post-gallery .format.active').length > 0) {
            $('#post-gallery .if-'+$('.format.active').attr('id')).show();
        }

        /**
         * Shortcode action: Copy
         * @since 2.1.8
         *
         * @see https://stackoverflow.com/questions/22581345/click-button-copy-to-clipboard-using-jquery
         */
        $('#post-gallery .action-copy').click(function(e) {
            e.preventDefault();
            var $temp = $("<input>");
            $('body').append($temp);
            $temp.val($('#post-gallery-shortcode').text()).select();
            document.execCommand("copy");
            $temp.remove();
        });

        /**
         * Shortcode action: Insert into editor
         * @since 2.1.8
         */
        $('#post-gallery .action-editor').click(function(e) {
            e.preventDefault();
            window.send_to_editor($('#post-gallery-shortcode').text());
        });


        /**
         * Show media loader.
         * @since 2.2.1
         */
        $('#post-gallery .insert-media').click(function() {
            $('#post-gallery').find('.media-loader').show();
        });

        /**
         * Hide media loader on media modal close.
         * @since 2.2.1
         */
        $(document).on('click', '.media-modal-close', function() {
            $('#post-gallery').find('.media-loader').hide();
        });
    });

})(jQuery);