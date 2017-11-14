import { prefixDom } from 'cfx.dom'

CFX = prefixDom {
  default: {
    'a'
    'li'
    'div'
    'label'
    'input'
    'p'
    'i'
  }
}

export default ->

  {
    c_a
    c_li
    c_div
    c_label
    c_input
    c_p
    c_i
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
        className: 'weui-cell__hd'
      ,

        c_input
          className: 'weui-check'
          type: "checkbox"
          name: "checkbox1"
          defaultChecked: true

        c_i
          className: [
            'weui-icon-checked'
            'weui-cell-success'
          ].join ' '

      c_div
        className: 'weui-cell__bd'
      ,

        c_p
          className: [
            'weui-cell-p'
            'weui-cell-p2'
          ].join ' '
        , '完成'

    c_label
      className: [
        'weui-cell'
        'weui-cell_swiped'
      ].join ' '  
    ,

      c_div
        className: 'weui-cell__bd'
        style:
          transform: 'translateX(-68px)'
      ,
      
        c_div
          className: 'weui-cell'
        ,

          c_div
            className: 'weui-cell__bd'

          c_div
            className: 'weui-cell__ft'
          , '说明文字'
            
      c_div
        className: 'weui-cell__ft'
      ,  

        c_a
          className:[
            'weui-swiped-btn'
            'weui-swiped-btn_warn'
          ].join ' '  
        , '删除'

    c_label
      className: [
        'weui-cell'
        'weui-check__label'
      ].join ' '
    ,

      c_div
        className: 'weui-cell__hd'
      ,

        c_input
          className: 'weui-check'
          type: "checkbox"
          name: "checkbox1"
        
        c_i
          className: [
            'weui-icon-checked'
            'weui-cell-success'
          ].join ' '

      c_div
        className: 'weui-cell__bd'
      ,

        c_p {}
        , '正常'      