import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'
import '../../public/assets/weui.css'
import '../../public/assets/example.css'
import list from './list'
import checked from './checked'
import './todos.css'
import title from './title'

CFX = prefixDom {
  default: {
    'div'
    'ul'
    'input'
  }
  'select'
}

export default ->

  storiesOf 'Todos', module

  .add 'Index'

  , =>

    {
      c_div
      c_ul
      c_input
      c_select
    } = CFX

    c_div
      className: [
        'page'
        'js_show'
        'home'
      ].join ' '
    ,
      title {}

      c_div
        className: [
          'page__bd'
          'weui-cells_checkbox'
        ].join ' '

      ,
        c_div
          className: [
            'weui-cells'
            'weuiweui'
          ].join ' '

        ,
          c_div
            className: [
              'weui-cell'
              'weui-cell_select'
              'weui-cell_select-before'
            ].join ' '

          ,
            c_div
              className: 'weui-cell__bd'

            ,
              c_input
                className: 'weui-input'
                type: "text"
                placeholder: "What needs to be done?"

            c_div
              className: [
                'weui-cell__hd'
                'weui-cell-down'
              ].join ' '

            ,
              c_select
                className: 'weui-select'

        c_ul {}

        ,
          list {}
          checked {}
