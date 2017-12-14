import { prefixDom } from 'cfx.dom'
import React, { Component } from 'react'
import {
  List
  Icon  
  NavBar
  Popover
  InputItem
} from 'antd-mobile'

{ Item } = Popover

CFX = prefixDom {
  'div'
  Item
  Icon
  NavBar
  Popover
  InputItem  
}

class Input extends React.Component

  render: () ->
    {
      c_div
      c_Item
      c_Icon
      c_NavBar
      c_Popover
      c_InputItem
    } = CFX

    {
      state
      handleVisibleChang
      onSelect
    } = @props

    state = 
      visible: true
      selected: ''

    onSelect = (opt) =>
      console.log opt
      console.log 'Hello'
      @setState({
        visible: false
        selected: opt.props.value
      })

    c_NavBar
      mode: 'light'
      rightContent:
        c_Popover
          overlayClassName: 'fortest'
          overlayStyle:
            color: 'currentColor'
          # visible: state.visible
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
          # onVisibleChange: -> handleVisibleChang
          onSelect: onSelect          
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

export default Input      