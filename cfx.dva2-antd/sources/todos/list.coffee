import { prefixDom } from 'cfx.dom'

CFX = prefixDom {
  default: {
    'a'
    'li'
    'label'
    'p'
    'div'
  }
}

export default ->

  {
    c_a
    c_li
    c_label
    c_p
    c_div
  } = CFX

  c_li {}
  ,
    c_label
      className: [
        'weui-cell'
        'weui-check__label'
      ].join ' '
    ,

      c_div
        className: 'weui-cell__bd'
      ,

        c_p {}
        , 'All'

    c_label
      className: [
        'weui-cell'
        'weui-check__label'
      ].join ' '
    ,

      c_div
        className: 'weui-cell__bd'
      ,

        c_p {}
        , 'Active'

    c_label
      className:[
        'weui-cell'
        'weui-check__label'
      ].join ' '

      c_div
        className: 'weui-cell__bd'
      ,

        c_p {}
        , 'Completed'
