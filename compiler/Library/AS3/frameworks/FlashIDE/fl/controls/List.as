﻿package fl.controls
{
	import fl.data.DataProvider;
	import fl.controls.listClasses.CellRenderer;
	import fl.controls.listClasses.ICellRenderer;
	import fl.controls.listClasses.ListData;
	import fl.controls.ScrollPolicy;
	import fl.controls.SelectableList;
	import fl.core.InvalidationType;
	import fl.core.UIComponent;
	import fl.events.DataChangeType;
	import fl.events.DataChangeEvent;
	import fl.events.ListEvent;
	import fl.events.ScrollEvent;
	import fl.managers.IFocusManagerComponent;
	import flash.display.DisplayObject;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.events.MouseEvent;
	import flash.ui.Keyboard;
	import flash.utils.Dictionary;
	import flash.geom.Rectangle;

	/**
	 * The List component displays list-based information and is ideally suited 
	 */
	public class List extends SelectableList implements IFocusManagerComponent
	{
		/**
		 * @private
		 */
		protected var _rowHeight : Number;
		/**
		 * @private
		 */
		protected var _cellRenderer : Object;
		/**
		 * @private
		 */
		protected var _labelField : String;
		/**
		 * @private
		 */
		protected var _labelFunction : Function;
		/**
		 * @private
		 */
		protected var _iconField : String;
		/**
		 * @private
		 */
		protected var _iconFunction : Function;
		/**
		 * @private
		 */
		private static var defaultStyles : Object;
		/**
		 *  @private
		 */
		public static var createAccessibilityImplementation : Function;

		/**
		 * Gets or sets the name of the field in the <code>dataProvider</code> object 
		 */
		public function get labelField () : String;
		/**
		 * @private
		 */
		public function set labelField (value:String) : void;
		/**
		 * Gets or sets the function to be used to obtain the label for the item.
		 */
		public function get labelFunction () : Function;
		/**
		 * @private
		 */
		public function set labelFunction (value:Function) : void;
		/**
		 * Gets or sets the item field that provides the icon for the item.
		 */
		public function get iconField () : String;
		/**
		 * @private
		 */
		public function set iconField (value:String) : void;
		/**
		 * Gets or sets the function to be used to obtain the icon for the item.
		 */
		public function get iconFunction () : Function;
		/**
		 * @private
		 */
		public function set iconFunction (value:Function) : void;
		/**
		 * Gets or sets the number of rows that are at least partially visible in the 
		 */
		public function get rowCount () : uint;
		/**
		 * @private
		 */
		public function set rowCount (value:uint) : void;
		/**
		 * Gets or sets the height of each row in the list, in pixels.
		 */
		public function get rowHeight () : Number;
		/**
		 * @private
		 */
		public function set rowHeight (value:Number) : void;

		/**
		 * @copy fl.core.UIComponent#getStyleDefinition()
		 */
		public static function getStyleDefinition () : Object;
		/**
		 * Creates a new List component instance.
		 */
		public function List ();
		/**
		 * @copy fl.controls.SelectableList#scrollToIndex()
		 */
		public function scrollToIndex (newCaretIndex:int) : void;
		/**
		 * @private (protected)
		 */
		protected function configUI () : void;
		/**
		 * @private (protected)
		 */
		protected function calculateAvailableHeight () : Number;
		/**
		 * @private (protected)
		 */
		protected function setHorizontalScrollPosition (value:Number, fireEvent:Boolean = false) : void;
		/**
		 * @private (protected)
		 */
		protected function setVerticalScrollPosition (scroll:Number, fireEvent:Boolean = false) : void;
		/**
		 * @private (protected)
		 */
		protected function draw () : void;
		/**
		 * @private (protected)
		 */
		protected function drawList () : void;
		/**
		 * @private (protected)
		 */
		protected function keyDownHandler (event:KeyboardEvent) : void;
		/**
		 * @private (protected)
		 */
		protected function moveSelectionHorizontally (code:uint, shiftKey:Boolean, ctrlKey:Boolean) : void;
		/**
		 * @private (protected)
		 */
		protected function moveSelectionVertically (code:uint, shiftKey:Boolean, ctrlKey:Boolean) : void;
		/**
		 * @private (protected)
		 */
		protected function doKeySelection (newCaretIndex:int, shiftKey:Boolean, ctrlKey:Boolean) : void;
		/**
		 * Retrieves the string that the renderer displays for the given data object 
		 */
		public function itemToLabel (item:Object) : String;
		/**
		 * @private (protected)
		 */
		protected function initializeAccessibility () : void;
	}
}