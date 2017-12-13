import { prefixDom } from 'cfx.dom'
import {
  List
  Icon  
  NavBar
  Popover
  InputItem
} from 'antd-mobile'

{ Item } = List

CFX = prefixDom {
  'div'
  Item
  Icon
  NavBar
  Popover
  InputItem  
}

export default ->

  {
    c_div
    c_Item
    c_Icon
    c_NavBar
    c_Popover
    c_InputItem
  } = CFX

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
    c_InputItem
      placeholder: 'What needs to be done'  