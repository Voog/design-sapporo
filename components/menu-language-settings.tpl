<div class="menu-language-settings menu-language-settings-popover menu-popover js-menu-language-settings-popover js-prevent-sideclick">
  <ul class="menu menu-vertical menu-cms-options menu-language-options">
    <li class="menu-item">
      <button class="js-toggle-language-flags">
        <span class="language-flags-enable">{{ "enable_lang_flags" | lc: editor_locale }}</span>
        <span class="language-flags-disable">{{ "disable_lang_flags" | lc: editor_locale }}</span>
      </button>
    </li>

    <li class="menu-item language-names-toggle">
      <button class="js-toggle-language-names">
        <span class="language-names-enable">{{ "enable_lang_name" | lc: editor_locale }}</span>
        <span class="language-names-disable">{{ "disable_lang_name" | lc: editor_locale }}</span>
      </button>
    </li>

    <li class="menu-item">
      <button class="js-toggle-language-menu-mode">
        <span class="language-menu-mode-list-enable">{{ "list_lang_menu" | lc: editor_locale }}</span>
        <span class="language-menu-mode-popover-enable">{{ "popover_lang_menu" | lc: editor_locale }}</span>
      </button>
    </li>
  </ul>
</div>
