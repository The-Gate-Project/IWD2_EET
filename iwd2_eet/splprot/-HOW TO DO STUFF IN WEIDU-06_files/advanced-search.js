(function(window, $) {

$(document).on('click', '.AdvancedSearch .Handle', function(e) {
    e.preventDefault();
    var $container = $(this).closest('.AdvancedSearch');
    var $adv = $container.find('input[name="adv"]');

    var setState = function() {
        var method = '';

        if ($container.find('.AdvancedWrap').css('display') == 'none') {
            $container.removeClass('Open');
            $adv.val('0');
            method = 'enable';
        } else {
            $container.addClass('Open');
            $adv.val('1');
            method = 'disable';

        }

        if (gdn.definition('searchAutocomplete', true) != '0') {
           $('#Form_search', $container).autocomplete(method);
           $('.js-search-groups').autocomplete(method);
        }
    }

    if ($container.hasClass('Open')) {
        $container.find('.AdvancedWrap').slideUp(100, setState);
    } else {
        $container.find('.AdvancedWrap').slideDown(100, setState);
    }
//    var open = $(this).closest('.AdvancedSearch').toggleClass('Open').hasClass('Open');
//    $(this).closest('.AdvancedSearch').find('input[name="adv"]').val(open ? '1' : '0');
}).on('change', '.AdvancedSearch #Form_discussionid', function(e) {
    $(this).closest('.AdvancedSearch').find('.TitleRow').toggleClass('Hidden', $(this).prop('checked'));
}).on('click', '.QuickSearchButton', function(e) {
    var $qs = $(this).closest('.QuickSearch').toggleClass('Open');
    if ($qs.hasClass('Open')) {
        $qs.find('#Form_search').focus();
    }

    return false;
});

$.fn.searchAutocomplete = function(options) {
    this.each(function() {
        var $this = $(this);

        var settings = $.extend({
            source: gdn.url('/search/autocomplete.json'),
            position: { collision: "flip" },
            focus: function() {
              // prevent value inserted on focus
              return false;
            },
            select: function( event, ui ) {
                window.location = gdn.url(ui.item.Url);
            }
        }, options, $this.data());

        if (settings.addForm)
            settings.source += '?'+$this.closest('form').serialize()

        $this.autocomplete(settings);

        var $ac = $this.data( "ui-autocomplete" );

        if ($ac) {
            $ac.menu.element.addClass('MenuItems MenuItems-Input');

            $ac._renderItem = function( ul, item ) {
                return $( "<li><a></a></li>" )
                  .find('a')
                  .html('<span class="Title">'+item.Title+'</span> ' +
                    ' <span class="Aside">' +
//                    '<span class="Notes">'+item.Notes+'</span> ' +
                    ' <span class="Date">'+item.DateHtml+'</span> ' +
                    '</span>' +
                    '<div class="Gloss">'+item.Summary+'</div>')
                  .attr('href', item.Url)
                  .closest('li')
                  .appendTo( ul );
              };

             $ac._resizeMenu = function() {
                var ul = this.menu.element;
                ul.outerWidth( Math.max(
                    400, // min width
                    this.element.outerWidth() // match input
                ) );
            };
        }
    });
    return this;
};

})(window, jQuery);

jQuery(document).ready(function($) {
    /// Search box autocomplete.
    if ($.fn.searchAutocomplete && gdn.definition('searchAutocomplete', true) != '0') {
        $('.AdvancedSearch #Form_search,.SiteSearch #Form_Search,.js-search').searchAutocomplete();

        $('.QuickSearch #Form_search').each(function() {
            var $this = $(this);

            $this.searchAutocomplete({
                addForm: true,
                position: {
                    collision: "flip",
                    of: $this.closest('form')
                }
            });
        });

        $('.js-search-groups').each(function() {
            var $this = $(this);

            $this.searchAutocomplete({
                source: '/search/groupautocomplete.json',
                addForm: true,
                position: {
                    collision: "flip",
                    of: $this.closest('form')
                }
            });
        });
    }

    if ($('.AdvancedSearch').length === 0)
        return;

    /// Author tag token input.
    var $author = $('.AdvancedSearch input[name="author"]');

    var author = $author.val();
    if (author && author.length) {
        author = author.split(",");
        for (i = 0; i < author.length; i++) {
            author[i] = { id: i, name: author[i] };
        }
    } else {
        author = [];
    }

    $author.tokenInput(gdn.url('/user/tagsearch'), {
        hintText: gdn.definition("TagHint", "Start to type..."),
        noResultsText: gdn.definition("TagNoResults", "No results"),
        tokenValue: 'name',
        searchingText: '', // search text gives flickery ux, don't like
        searchDelay: 300,
        minChars: 1,
        maxLength: 25,
        prePopulate: author,
        animateDropdown: false,
        allowTabOut: true
    });

    /// Tag token input.
    var $tags = $('.AdvancedSearch input[name="tags"]');

    var data_tags = $tags.data('tags');
    var tags = $tags.val();

    if (data_tags) {
       tags = [];
       if (jQuery.isPlainObject(data_tags)) {
          for (id in data_tags) {
             tags.push({id: id, name: data_tags[id]});
          }
       }
    } else if (tags && tags.length) {
        tags = tags.split(",");
        for (i = 0; i < tags.length; i++) {
            tags[i] = { id: i, name: tags[i] };
        }
    } else {
        tags = [];
    }

    $tags.tokenInput(gdn.url('/tags/search?id=0&type=0'), {
      hintText: gdn.definition("TagHint", "Start to type..."),
      noResultsText: gdn.definition("TagNoResults", "No results"),
//      tokenValue: 'name',
      searchingText: '',
      searchDelay: 300,
      minChars: 1,
      maxLength: 25,
      prePopulate: tags,
      animateDropdown: false,
      allowTabOut: true
  });
});
