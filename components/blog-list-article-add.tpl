<button class="content-item-box without-image cms-blog-article-add-button" data-behavior="open-add-modal" data-component="article" data-page-id="{% if blog-list-article-add == "item" %}{{ item.page_id }}{% else %}{{ page.id }}{% endif %}">
  <div class="item-top">
    <div class="top-inner aspect-ratio-inner">
      <div class="item-placeholder">
        <svg class="article-add-ico" width="82" height="82" viewBox="0 0 82 82" xmlns="http://www.w3.org/2000/svg">
          <use xlink:href="#ico-plus"></use>
        </svg>

        <div class="item-title">{{ "add_new_post" | lc }}</div>
      </div>
    </div>
  </div>
</button>
