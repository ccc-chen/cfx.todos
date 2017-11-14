import { prefixDom } from 'cfx.dom'

CFX = prefixDom {
  default: {
    'label'
    'p'
    'div'
    'li'
  }
}

export default ->

  {
    c_label
    c_p
    c_div
    c_li
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
    ,

      c_div
        className: 'weui-cell__bd'
      ,

        c_p {}
        , 'Completed'
