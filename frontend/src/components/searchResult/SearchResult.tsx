import { useState, useEffect } from 'react'
import { RouteComponentProps } from 'react-router-dom'
import styled from 'styled-components'
import { useSetRecoilState } from 'recoil'
import { RoomData } from '../../customHook/atoms'
import useAxios from '../../customHook/useAxios'
import { getHouseData } from '../../customHook/axiosAPI'
import Logo from '../header/Logo'
import CenterMenu from '../header/CenterMenu'
import UserInfo from '../header/UserInfo'
import MiniSearchBar from './MiniSearchBar'
import HouseList from './HouseList'
import SearchBar from '../searchBar/SearchBar'
import Map from './Map'
import {IParams} from '../../Interface'

function SearchResult({ match }: RouteComponentProps<IParams>) {

  const setRoomDatas = useSetRecoilState(RoomData)
  const [clicked, setClicked] = useState(false)
  const { fetchData} = useAxios(() => getHouseData(match.params),[], true)
  useEffect(() => {
    (async function() {
      const response: any = await fetchData();
      console.log(response);
      if(response?.data?.rooms) setRoomDatas(response.data.rooms);
    })();
  }, [match])

  // let roomData = result && !isRouter ? result.rooms : roomDatas

  return (
    <TotalWindow>
      <Header>
        <FlexBox>
          <Logo />
          {clicked && <CenterMenu type='black'/>}
          {!clicked &&<MiniSearchBar setClicked={setClicked} inputData={match.params} /> }
          <UserInfo />
        </FlexBox>
        {clicked && <SearchBar />}
      </Header>
      <NoPaddingFlexBox>
        <HouseList />
        <Map setRoomDatas={setRoomDatas} />
      </NoPaddingFlexBox>
    </TotalWindow>
  )
}
const TotalWindow = styled.div`
`
const Header = styled.div`
  margin-bottom: 45px;
`
const FlexBox = styled.div`
  display: flex;
  justify-content: space-around;
  margin: 30px 0;
`
const NoPaddingFlexBox = styled.div`
  display: flex;
`
export default SearchResult
