/**
 * Created with JetBrains RubyMine.
 * User: gurnetko
 * Date: 29.08.12
 * Time: 11:29
 * To change this template use File | Settings | File Templates.
 */

(function ($) {
  $(document).ready(function () {

    $('#thumbs a').click(function () {
      this_ = $(this);
      $('<img/>')
        .attr('src', $(this).attr("href"))
        .load(function () {
          $('#large-image img').attr('src', this_.attr("href"));
        });

      return false;
    });

  });
})(jQuery);