import { prefixDom } from 'cfx.dom'
import React, { Component } from 'react'
CFX = prefixDom {
  'h1'
}

class Title extends Component
  
  render: () ->
 
  {
    c_h1
  } = CFX

  c_h1
    style:
      fontSize: '20px'
      textAlign: 'left'
      fontWeight: '400'
      color: '#c7c7cc'
      padding: '30px'
  , 'Todos'

export default Title