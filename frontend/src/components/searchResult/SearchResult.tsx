import { RouteComponentProps } from 'react-router-dom'
import styled from 'styled-components'
import useAxios from '../../customHook/useAxios'
import { getHouseData } from '../../customHook/axiosAPI'
import Logo from '../header/Logo'
import CenterMenu from '../header/CenterMenu'
import UserInfo from '../header/UserInfo'
import MiniSearchBar from './MiniSearchBar'
import HouseList from './HouseList'
import Map from './Map'
interface params {
  place: string | undefined
  checkIn: string | undefined
  checkOut: string | undefined
  priceMin: string | undefined
  priceMax: string | undefined
  minFeePercent: string | undefined
  maxFeePercent: string | undefined
  adult: string | undefined
  child: string | undefined
  baby: string | undefined
}
function SearchResult({ match }: RouteComponentProps<params>) {
  const { state } = useAxios(() => getHouseData(match.params))

  const { loading, error, data: result } = state
  if (loading) return <div>Loading...💭</div>
  if (error) return <div>에러발생</div>
  if (!result) return null
  let roomData = result ? result.rooms : null
  return (
    <TotalWindow>
      <FlexBox>
        <Logo />
        <MiniSearchBar />
        <UserInfo />
      </FlexBox>
      <NoPaddingFlexBox>
        <HouseList data={roomData} />
        <Map />
      </NoPaddingFlexBox>
    </TotalWindow>
  )
}
const TotalWindow = styled.div``
const FlexBox = styled.div`
  display: flex;
  justify-content: space-around;
  margin: 30px 0;
`

const NoPaddingFlexBox = styled.div`
  display: flex;
  margin: 0px;
`
export default SearchResult
