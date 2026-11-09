---
title: "Help Wanted"
---

This page collects the "help_wanted" flags from all Digimon card data files. If you are able to help with any of the listed issues then please visit the <a href="{{ site.data.external_links.gh_contribution_guide }}" target="_blank" class="footer-link">contribution guide on GitHub</a>!

{% assign help_types = "" | split: "" %}

{% for card in site.upper_deck_cards %}
  {% if card.help_wanted.size > 0 %}
    {% for issue in card.help_wanted %}
      {% unless help_types contains issue.type %}
        {% assign help_types = help_types | push: issue.type %}
      {% endunless %}
    {% endfor %}
  {% endif %}
{% endfor %}

{% for type in help_types %}
  <h2>{{ type }}</h2>

  <ul>
    {% for card in site.upper_deck_cards %}
      {% assign matching_issues = card.help_wanted | where: "type", type %}

      {% for issue in matching_issues %}
        <li>
          <a href="{{ card.url | relative_url }}">{{ card.name }} ({{ card.serial_code }})</a>
          - {{ issue.note }}
        </li>
      {% endfor %}
    {% endfor %}
  </ul>
{% endfor %}

{% if help_types.size == 0 %}
  <h2>Wow!</h2>
  <p>No cards are currently flagged as needing help. Nice one!</p>
{% endif %}
