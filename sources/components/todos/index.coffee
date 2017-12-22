import { prefixDom } from 'cfx.dom'
import React, { Component } from 'react'

import Title from './title'
import Input from './input'
import CheckList from './list'

CFX = prefixDom {
  'div'
  Title
  Input
  CheckList
} 

class Todos extends React.Component

  render: () ->
    {
      c_div
      c_Title
      c_Input
      c_CheckList
    } = CFX

    c_div {}
    ,
      c_Title {}

      c_Input
        # filter: @state.filter
        # selector: (filter) ->
        #   console.log filter 
      c_CheckList
        filter: @state.filter
        handleClick:(filter) ->
          console.log filter

    
export default Todos