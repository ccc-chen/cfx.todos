import { prefixDom } from 'cfx.dom'
import React, { Component } from 'react'

import store  from '../../ReduxSer'
{ actions } = store

import { connect } from 'cfx.react-redux'

import {
  List
  Icon  
  NavBar
  Popover
  InputItem
} from 'antd-mobile'

# { Item } = List
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
    c_NavBar 
      mode: 'light'
      rightContent:
        c_Popover
          mask: false
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
            c_Item
              key: '4'
              value: 'create'
            , 'Create'
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


mapStateToProps = (state) ->
  getState state.userApp.users

mapDispatchToProps = (
  dispatch,
  value
) ->
  onClick: () -> 
    dispatch
      type: 'SET_VISIBILITY_FILTER',
      x: console.log('hello')
      


export default connect(
  mapStateToProps
  mapDispatchToProps
  Input
)