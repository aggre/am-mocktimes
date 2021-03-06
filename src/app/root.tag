import './parts/question.tag'
import './parts/header.tag'
import './parts/help.tag'
import './parts/view-mock/index.tag'
import './parts/mockbox.tag'

<app-root>
  <parts-header></parts-header>
  <parts-mockbox></parts-mockbox>
  <parts-help if={isHelpOpen}></parts-help>
  <parts-view-mock
    if="{currentUrl}"
    data-src="{currentUrl}"
    data-target="{getTarget()}"
    >
  </parts-view-mock>
  <script>
    import { observe } from 'dob'
    import route from 'riot-route'
    import state from '../state'
    import * as Actions from '../actions'
    import { getTarget } from '../utils/target'

    this.isHelpOpen = false

    Object.assign(this, {
      getTarget
    })

    observe(() => {
      this.update({
        isHelpOpen: state.help.isOpen,
        currentUrl: state.mock.currentUrl
      })
    })

    const getMockUrl = () => {
      // riotのrouterを利用。
      const hashTag = location.hash.replace(/^#/, '')
      try {
        const {mockUrl} = JSON.parse(decodeURIComponent(hashTag))
        return mockUrl
      } catch (e) {
        return null
      }
    }

    route('*', () => {
      Actions.setCurrentUrl(getMockUrl())
    })

    route('..', () => {
      Actions.setCurrentUrl(null)
    })

    const mockUrl = getMockUrl()

    if (mockUrl) {
      const initialUrl = location.href
      history.replaceState(null, null, location.href.replace(location.hash, ''))
      history.pushState(null, null, initialUrl)
    }

    route.start(true)
  </script>
</app-root>
