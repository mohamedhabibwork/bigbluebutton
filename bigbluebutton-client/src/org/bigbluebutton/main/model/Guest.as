/**
* BigBlueButton open source conferencing system - http://www.bigbluebutton.org/
*
* Copyright (c) 2013 BigBlueButton Inc. and by respective authors (see below).
*
* This program is free software; you can redistribute it and/or modify it under the
* terms of the GNU Lesser General Public License as published by the Free Software
* Foundation; either version 2.1 of the License, or (at your option) any later
* version.
*
* BigBlueButton is distributed in the hope that it will be useful, but WITHOUT ANY
* WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
* PARTICULAR PURPOSE. See the GNU Lesser General Public License for more details.
*
* You should have received a copy of the GNU Lesser General Public License along
* with BigBlueButton; if not, see <http://www.gnu.org/licenses/>.
* 
* author: 
*/
package org.bigbluebutton.main.model
{

	import com.asfusion.mate.events.Dispatcher;


	public class Guest
	{
		private var listOfGuests:Object = new Object();
		private var numberOfGuests = 0;
		private var dispatcher;

		function Guest(dispatcher:Dispatcher) {
			this.dispatcher = dispatcher;
		}

		public function hasGuest():Boolean {
			return numberOfGuests > 0;
		}

		public function getNumberOfGuests():Number {
			return numberOfGuests;
		}

		public function addGuest(userID:Number, userName:String):void {
			var guest:Object = {userid:userID, username:userName};
			listOfGuests.addItem(guest);
			numberOfGuests++;
		}

		public function removeAllGuests():void {
			listOfGuests = new Object();
			numberOfGuests = 0;
		}
		
		public function remove(userid:Number):void {
			if (listOfGuests[userid] != null) {
					numberOfGuests--;
					delete listOfGuests[userid];
			}
		}
	}
}
