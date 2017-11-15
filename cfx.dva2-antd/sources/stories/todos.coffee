import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'
import '../../public/assets/weui.css'
import '../../public/assets/example.css'

import Todos from '../todos/index'

CFX = prefixDom {
  default: {
    'div'
  }
  Todos
}

export default ->

  storiesOf 'Todos', module

  .add 'Index'

  , =>

    {
      c_div
      c_Todos
    } = CFX

    c_Todos {}


