import { withRouter } from 'react-router-dom'
import styled from 'styled-components'
import SearchIcon from '@material-ui/icons/Search'
import Button from '@material-ui/core/Button'
import useAxios from '../../../customHook/useAxios'
import { getHouseData } from '../../../customHook/axiosAPI'
import { useRecoilValue, useRecoilState, useSetRecoilState } from 'recoil'
import { RecoilValueGroup, RouterOrSearch, RoomData } from '../../../customHook/atoms'
import { PlaceSection } from '../../../style/BarStyle'
import { AxiosResponse } from 'axios'
function SearchBtn({ history }: any) {
  const setRoomDatas = useSetRecoilState(RoomData)

  const [isRouter, setIsRouter] = useRecoilState(RouterOrSearch)
  const value = RecoilValueGroup()
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

  const { fetchData } = useAxios(() => getHouseData(value), [], true)
  const GoNextPage = async () => {
    if (isRouter) {
      history.push(
        `/searchResult/${place}/${checkIn}/${checkOut}/${priceMin}/${priceMax}/${minFeePercent}/${maxFeePercent}/${adult}/${child}/${baby}`
      )
    } else {
      const response = await fetchData()
      setIsRouter(true)
      if (response !== undefined && response.data.rooms.length > 0)
        setRoomDatas(response.data.rooms)
    }
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
