import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'


import ListNot from '../../components/todos/list'

CFX = prefixDom {
  ListNot
}

export default ->

  storiesOf 'TodosState', module

  .add 'ListNotCompleted'

  , =>

    {
      c_ListNot
    } = CFX

    c_ListNot
      data: [
          value: 0
          label: '完成1'
        ,
          value: 1
          label: '完成2'
      ]
      
      creatList: (data) ->
        console.log 'hello'
        
      isClick: false
      str: ' '
      
      hasClick: (str) ->
        console.log 'checked:'
        console.log str