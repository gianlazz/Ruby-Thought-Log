package com.lazztech.thoughtlog;

import android.app.*;
import android.content.*;
import android.os.*;
import android.view.*;
import android.widget.*;

class MainActivity < Activity

	def onCreate(savedInstanceState)
	 super

   setContentView(resources.getIdentifier('MainActivity', 'layout', 'com.lazztech.thoughtlogruby');
  end

	
	public void onNewLogButtonClick(View view)
	
		Intent intent = new Intent(this, NewLogActivity.class);
		startActivity(intent);
	
	
	def
  onCreateOptionsMenu(Menu menu)
  end
	
		// Inflate main_menu.xml 
		MenuInflater inflater = getMenuInflater();
		inflater.inflate(R.menu.main_menu, menu);
		return true;
    
	

	public boolean onOptionsItemSelected(MenuItem item)
	
		switch (item.getItemId())
		
			case R.id.mainMenuAbout:
				Toast.makeText(this, "This is my app!!!", Toast.LENGTH_SHORT).show();
				return true;
			case R.id.mainMenuExit:
				finish();
				return true;

		
		return super.onOptionsItemSelected(item);
	
	

