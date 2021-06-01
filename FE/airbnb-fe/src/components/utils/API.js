const END_POINT = 'http://3.35.226.74';

const API = {
  get: {
    home: () => handleFetch(`${END_POINT}/suggestions`),
    room: () => handleFetch(`${END_POINT}/airbnb`),
    // room: () => fetch(`${END_POINT}/airbnb`).then((res) => res.json()),
  },
};

const handleFetch = async (...param) => {
  const fetchData = await (await fetch(...param)).json();
  // console.log('aPI 안', fetchData);
  if (fetchData.statusCode >= 400 || fetchData.body === null)
    throw { status: 'fail' };
  return fetchData;
};
export default API;
