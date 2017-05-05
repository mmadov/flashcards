import { StyleSheet } from 'react-native';

export default StyleSheet.create({
  // * This is a manifest file that'll be compiled into application.css, which will include all the files
 * listed below.
 *
 * Any CSS and SCSS file within this directory, lib/assets/stylesheets, vendor/assets/stylesheets,
 * or any plugin's vendor/assets/stylesheets directory can be referenced here using a relative path.
 *
 * You're free to add application-wide styles to this file and they'll appear at the bottom of the
 * compiled file so the styles you add here take precedence over styles defined in any other CSS/SCSS
 * files in this directory. Styles in this file should be added after the last require_* statement.
 * It is generally better to create a new file per style scope.
 *
 *= require bootstrap
 *= require_tree .
 *= require_self
  '#container': {
    'margin': [{ 'unit': 'px', 'value': 48 }, { 'unit': 'string', 'value': 'auto' }, { 'unit': 'px', 'value': 48 }, { 'unit': 'string', 'value': 'auto' }],
    'width': [{ 'unit': 'px', 'value': 960 }]
  },
  '#container > section': {
    'clear': 'both'
  },
  '#container > header': {
    'marginBottom': [{ 'unit': 'px', 'value': 46 }],
    'background': '#f8f8f8',
    'padding': [{ 'unit': 'px', 'value': 10 }, { 'unit': 'px', 'value': 10 }, { 'unit': 'px', 'value': 10 }, { 'unit': 'px', 'value': 10 }]
  },
  '#container > header > h1': {
    'float': 'left',
    'margin': [{ 'unit': 'px', 'value': 0 }, { 'unit': 'px', 'value': 0 }, { 'unit': 'px', 'value': 0 }, { 'unit': 'px', 'value': 0 }]
  },
  'navigation-links': {
    'float': 'right'
  },
  'navigation-links li': {
    'display': 'inline-block',
    'margin': [{ 'unit': 'px', 'value': 0 }, { 'unit': 'px', 'value': 16 }, { 'unit': 'px', 'value': 0 }, { 'unit': 'px', 'value': 16 }]
  },
  // MISC
  'clearfix:after': {
    'content': '"."',
    'display': 'block',
    'clear': 'both',
    'visibility': 'hidden',
    'lineHeight': [{ 'unit': 'px', 'value': 0 }],
    'height': [{ 'unit': 'px', 'value': 0 }]
  },
  'html[xmlns]clearfix': {
    'display': 'block'
  },
  '* html clearfix': {
    'height': [{ 'unit': '%V', 'value': 0.01 }]
  }
});
