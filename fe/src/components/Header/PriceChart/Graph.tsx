import styled from 'styled-components';

const Graph = () => {
  const handleChangeValue = () => {
    console.log();
  };
  return (
    <GraphContainer>
      <svg viewBox="0 0 500 100">
        <polyline
          fill="black"
          stroke="#0074d9"
          stroke-width="2"
          points="
       00,100
       20,90
       40,80
       60,80
       80,80
       100,70
       120,60
       160,50
       180,60
       220, 40
       240, 20
       300, 30
       320, 72
       400, 55
       420, 89
       440, 70
       500, 100
     "
        />
      </svg>
      <Slider>
        <LeftSlider
          type="range"
          step="500"
          min="0"
          max="50000"
          defaultValue="500"
          name="leftSlider"
        />
        <RightSlider
          type="range"
          step="500"
          min="0"
          max="50000"
          defaultValue="45000"
          name="rightSlider"
        />
      </Slider>
    </GraphContainer>
  );
};

export default Graph;

const GraphContainer = styled.div`
  position: relative;
`;

const Slider = styled.div`
  input[type='range'] {
    width: 110%;
    height: 1px;
    pointer-events: none;
    position: absolute;
    bottom: -14%;
    left: -5%;
    cursor: pointer;
    -webkit-appearance: none;
  }

  input[type='range']::-webkit-slider-thumb {
    pointer-events: all;
    position: relative;
    z-index: 1;
    -webkit-appearance: none;
    width: 25px;
    height: 25px;
    background: url('./pause-circle.svg') no-repeat;
  }
`;

const LeftSlider = styled.input``;

const RightSlider = styled.input``;
