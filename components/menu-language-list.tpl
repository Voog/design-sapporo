<nav class="menu-language menu-language-list js-menu-language-list">
  <ul class="menu menu-horizontal menu-public">
    {% for language in site.languages %}
      <li class="menu-item">
        <a class="ico-flags ico-flag-{{ language.code }}{% if language.selected? %} selected{% endif %}" href="{{ language.url }}" data-lang-code="{{ language.code }}">
          <span class="menu-language-name">{{ language.title }}</span>
          {% if language.selected? %}
            <svg class="menu-language-btn-circle" width="9" height="9" viewBox="0 0 9 9" xmlns="http://www.w3.org/2000/svg">
              <use xlink:href="#ico-circle"></use>
            </svg>
          {% endif %}
        </a>
      </li>
    {% endfor %}

    {% if editmode %}
      <li class="menu-item menu-item-cms">
        <button class="btn menu-language-settings-btn edy-cbtn js-toggle-menu-language-settings js-prevent-sideclick">
          <span>
            <span class="edy-cbtn-content">
              <span class="edy-cbtn-ico">
                <svg width="12" height="12" xmlns="http://www.w3.org/2000/svg">
                  <path id="ico-cog-small-12" pointer-events="none" d="M11.538 5.077h-.553c-.254 0-.523-.198-.6-.441l-.318-.773c-.12-.224-.07-.553.108-.733l.394-.393c.18-.18.18-.474 0-.653l-.653-.653c-.179-.18-.473-.18-.652 0l-.394.393c-.178.179-.51.229-.734.108l-.771-.318c-.242-.074-.44-.344-.44-.598v-.554c0-.253-.209-.462-.463-.462h-.923c-.254 0-.462.209-.462.462v.554c0 .254-.197.524-.44.599l-.773.317c-.225.12-.553.072-.732-.108l-.395-.393c-.18-.18-.473-.18-.652 0l-.653.653c-.18.179-.18.473 0 .653l.392.393c.18.18.229.509.108.733l-.317.774c-.076.242-.344.44-.599.44h-.554c-.254 0-.462.207-.462.461v.923c0 .254.208.462.462.462h.554c.255 0 .523.199.598.441l.318.773c.121.224.072.555-.108.734l-.392.392c-.18.18-.18.474 0 .654l.654.653c.179.179.472.179.652 0l.395-.393c.178-.179.508-.228.73-.107l.775.318c.243.076.44.344.44.599v.553c-.001.253.207.46.461.46h.923c.254 0 .463-.208.463-.461v-.553c0-.255.199-.523.44-.599l.774-.318c.223-.121.553-.072.733.107l.392.393c.18.179.473.179.652 0l.654-.653c.18-.18.18-.473 0-.654l-.394-.393c-.178-.178-.228-.51-.108-.734l.318-.773c.076-.242.347-.441.6-.441h.553c.254.003.461-.204.461-.458v-.925c0-.254-.207-.461-.462-.461m-3.229.923c0 1.274-1.033 2.307-2.307 2.307-1.276-.001-2.308-1.033-2.308-2.307s1.033-2.307 2.308-2.307c1.274-.001 2.307 1.032 2.307 2.307" fill="currentColor"></path>
                </svg>
              </span>
              
              <span>{{ "settings" | lc: editor_locale }}</span>
            </span>
          </span>
        </button>
      </li>
    {% endif %}
  </ul>
</nav>
