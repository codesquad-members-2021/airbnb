import { withRouter } from 'react-router-dom'
import styled from 'styled-components'
import SearchIcon from '@material-ui/icons/Search'
import Button from '@material-ui/core/Button'
import { useRecoilValue } from 'recoil'
import { RecoilValueGroup } from '../../../customHook/atoms'
import { PlaceSection } from '../../../style/BarStyle'

function SearchBtn({ history }: any) {
  const value = useRecoilValue(RecoilValueGroup)
  const {
    place,
    checkIn,
    checkOut,
    priceMin,
    priceMax,
    minFeePercent,
    maxFeePercent,
    adult,
    child,
    baby,
  } = value

  const GoNextPage = () => {
    let routingPath =`/searchResult/${place}/${checkIn}/${checkOut}/${priceMin}/${priceMax}/${minFeePercent}/${maxFeePercent}/${adult}/${child}/${baby}`
    history.push(routingPath)
  }

  return (
    <PlaceSection>
      <Button
        variant='contained'
        color='secondary'
        className={'routerBtn'}
        startIcon={<SearchIcon />}
        style={{ borderRadius: 50 }}
        onClick={GoNextPage}
      >
        <CustomSpan>검색</CustomSpan>
      </Button>
    </PlaceSection>
  )
}

const CustomSpan = styled.span`
  color: ${({ theme }) => theme.color.white};
  font-weight: ${({ theme }) => theme.fontWeight.W2};
  text-decoration: none;
`
export default withRouter(SearchBtn)
