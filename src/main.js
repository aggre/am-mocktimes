import riot from 'riot'
import 'normalize.css'
import './main.css'
import './app/root.tag'
import setKeyboardEvent from './tools/keyboard'
import { setPattern } from './actions'

export const generateList = pattern => {
  if (pattern) setPattern(pattern)
  if (window.app) return
  setKeyboardEvent()
  window.app = riot.mount('app-root')
}
