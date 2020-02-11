# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Politician.destroy_all 
User.destroy_all
Scale.destroy_all

Politician.create(image: "dist_1.jpg", name: "Buddy Carter", party: "Republican", office: "Congressperson", district: 1, bio: "Earl Leroy Buddy Carter (born September 6, 1957) is an American politician serving as the U.S. Representative for Georgia's 1st congressional district since 2015. The district is based in Savannah and includes most of the coastal southern portion of the state. A member of the Republican Party, he previously served as a Georgia State Representative (2005–2009) and Georgia State Senator (2009–2014).")
Politician.create(image: "dist_2.jpg", name: "Sanford Bishop", party: "Democrat", office: "Congressperson", district: 2, bio: "Sanford Dixon Bishop Jr. (born February 4, 1947) is an American politician serving as the U.S. Representative for Georgia's 2nd congressional district, serving since 1993. He is a member of the Democratic Party. The district is located in the southwestern part of the state and includes Albany, Thomasville, and most of Columbus and Macon.")
Politician.create(image: "dist_3.jpg", name: "Drew Ferguson", party: "Republican", office: "Congressperson", district: 3, bio: "Anderson Drew Ferguson IV (born November 15, 1966) is an American and politician who is the U.S. Representative for Georgia's 3rd congressional district. The district stretches from the southern suburbs of Atlanta to the northern suburbs of Columbus. A Republican, he previously served as the mayor of West Point, Georgia, a city located between LaGrange and Columbus.")
Politician.create(image: "dist_4.jpg", name: "Hank Johnson", party: "Democrat", office: "Congressperson", district: 4, bio: "Henry Calvin Johnson Jr. (born October 2, 1954) is the U.S. Representative for Georgia's 4th congressional district, serving since 2007. He is a member of the Democratic Party. The district is based in DeKalb County, a largely suburban county east of Atlanta. It also includes portions of Gwinnett, Newton, and all of Rockdale county; the district's boundaries have been redrawn, in accordance with the results of the 2010 United States Census, since Congressman Johnson's initial election victory in 2006. He is one of only two Buddhists, along with Hawaii Senator Mazie Hirono, to serve in the United States Congress.")
Politician.create(image: "dist_5.jpg", name: "John Lewis", party: "Democrat", office: "Congressperson", district: 5, bio: "John Robert Lewis (born February 21, 1940) is an American politician and civil rights leader. He is the U.S. Representative for Georgia's 5th congressional district, serving in his 17th term in the House, having served since 1987, and is the dean of the Georgia congressional delegation. His district includes the northern three-fourths of Atlanta. He is a member of the Democratic Party.")
Politician.create(image: "dist_6.jpg", name: "Lucy McBath", party: "Democrat", office: "Congressperson", district: 6, bio: "Lucia Kay McBath (née Holman; born June 1, 1960) is an American gun control advocate and politician who is a member of the United States House of Representatives from Georgia's 6th congressional district. The district, which was once represented by former House Speaker Newt Gingrich, includes many of Atlanta's affluent northern suburbs, such as Alpharetta, Roswell, Johns Creek, Dunwoody, Sandy Springs, Brookhaven, and parts of Tucker and Marietta.")
Politician.create(image: "dist_7.jpg", name: "Rob Woodall", party: "Republican", office: "Congressperson", district: 7, bio: "William Robert Woodall III (born February 11, 1970) is an American attorney and politician who has been the U.S. Representative for Georgia's 7th congressional district since 2011. The district includes most of Gwinnett County, an affluent suburban county northeast of Atlanta. He is a Republican. Prior to being elected to Congress, he worked for his predecessor, John Linder from 1994 to 2010, eventually becoming Linder's chief of staff.")
Politician.create(image: "dist_8.jpg", name: "Austin Scott", party: "Republican", office: "Congressperson", district: 8, bio: "James Austin Scott (born December 10, 1969) is an American politician who has been the U.S. Representative for Georgia's 8th congressional district since 2011. He is a member of the Republican Party. Scott served in the Georgia House of Representatives before being elected to the House of Representatives.")
Politician.create(image: "dist_9.jpg", name: "Doug Collins", party: "Republican", office: "Congressperson", district: 9, bio: "Douglas Allen Collins (born August 16, 1966) is an American politician and a United States Representative from Georgia's 9th congressional district since 2013. Previously he was a state representative in the Georgia House of Representatives, representing the 27th district, which includes portions of Hall, Lumpkin, and White counties. Collins also serves as a chaplain in the U.S. Air Force Reserve with the rank of Lieutenant Colonel. He is a Republican.")
Politician.create(image: "dist_10.jpg", name: "Jody Hice", party: "Republican", office: "Congressperson", district: 10, bio: "Jody Brownlow Hice (born April 22, 1960) is an American politician, radio show host, and political activist serving as the U.S. Representative for Georgia's 10th congressional district since 2015. He is a member of the Republican Party.")
Politician.create(image: "dist_11.jpeg", name: "Barry Loudermilk", party: "Republican", office: "Congressperson", district: 11, bio: "Barry Dean Loudermilk (born December 22, 1963) is an American politician from the state of Georgia. He is the U.S. Congressman from Georgia's 11th congressional district, serving since 2015. The district covers a large slice of Atlanta's northern suburbs, including Marietta, Acworth and Smyrna, as well as a sliver of Atlanta itself.")
Politician.create(image: "dist_12.jpg", name: "Rick Allen", party: "Republican", office: "Congressperson", district: 12, bio: "Richard Wayne Allen (born November 7, 1951) is an American politician who is serving as the U.S. Representative for Georgia's 12th congressional district. He is a member of the Republican Party.")
Politician.create(image: "dist_13.jpg", name: "David Scott", party: "Democrat", office: "Congressperson", district: 13, bio: "David Albert Scott (born June 27, 1945) is the U.S. Representative for Georgia's 13th congressional district, serving since 2003. The district includes the southern fourth of Atlanta, as well as several of its suburbs to the south and west. He is a member of the Democratic Party.")
Politician.create(image: "dist_14.jpg", name: "Tom Graves", party: "Republican", office: "Congressperson", district: 14, bio: "John Thomas Graves Jr. (born February 3, 1970) is the U.S. Representative for Georgia's 14th congressional district, serving since winning a special election for Georgia's 9th congressional district in 2010. He is a member of the Republican Party. Graves served in the Georgia House of Representatives before being elected to the House of Representatives.")


100.times do
    party = rand(1..7)
    if party == 1
      party = "Democrat"
    elsif party == 2
      party = "Republican"
    elsif party == 3
      party = "Communist"
    elsif party == 4
        party = "Fascist"
    elsif party == 5
        party = "Tea Party"
    elsif party == 6
        party = "Whig"
    else
      party = "Independent"
    end

    dist = rand(1..14)
  
      User.create(name: Faker::Name.name, username: Faker::Games::ElderScrolls.last_name, party: party, email: Faker::Internet.email, district: dist )
  end

  300.times do
    rating = rand(1..10)
    user = rand(User.all.first.id..User.all.last.id)
    politician = rand(Politician.all.first.id..Politician.all.last.id)
    Scale.create(user_id: user, politician_id: politician, rating:rating)
end