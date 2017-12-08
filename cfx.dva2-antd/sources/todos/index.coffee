import { prefixDom } from 'cfx.dom'
import { SwipeAction, NavBar, Popover, List, Checkbox, InputItem, Icon} from 'antd-mobile'
import 'antd-mobile/dist/antd-mobile.css'


{
  Item
} = List

{
  CheckboxItem
} = Checkbox
CFX = prefixDom {
  'div'
  Popover
  Item
  NavBar
  Icon
  List
  CheckboxItem
  InputItem
  SwipeAction
}

export default ->

  {
    c_div
    c_Popover
    c_Item
    c_NavBar
    c_Icon
    c_List
    c_CheckboxItem
    c_InputItem
    c_SwipeAction
  } = CFX

  c_div {}
  ,
    c_NavBar
      mode: 'light'
      rightContent:
        c_Popover
          overlayClassName: 'fortest'
          overlayStyle:
            color: 'currentColor'
          overlay: [
            c_Item
              key: '1'
              value: 'active'
            , 'Active'
            c_Item
              key: '2'
              value: 'completed'
            , 'Completed'
            c_Item
              key: '3'
              value: 'all'
            , 'All'
          ]
        ,
          c_div
            style:
              height: '100%'
              padding: '0 15px'
              marginRight: '-15px'
              display: 'flex'
              alignItems: 'center'
          ,
            c_Icon
              type: 'ellipsis'
    , 'What needs to be done'

    c_List
      renderHeader: ' '
      className: 'my-list'
    ,
      c_CheckboxItem
        value: '0'
        label: '完成'
        defaultChecked: true
      , '完成'

      c_CheckboxItem
        value: '1'
        label: '完成'
        disabled: true
        defaultChecked: true
      , '完成'


      c_SwipeAction
        autoClose: true
        style:
          background: 'gary'
        right: [
          text: 'Cancel'
          style:
            background: '#ddd'
            color: 'white'
        ,
          text: 'delete'
          style:
            background: '#F4333C'
            color: 'white'        
        ]
        c_Item
          extra: 'More'
          arrow: 'horizontal'
        , ' '  
 



   